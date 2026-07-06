import SwiftUI
import AVFoundation
import PhotosUI

struct CameraView: View {
    @EnvironmentObject var router: AppRouter
    @Environment(\.accessibilityReduceMotion) var reduceMotion

    enum Phase: Equatable {
        case ready
        case identifying
        case identified(name: String, confidence: Int)
        case error(String)
    }

    @StateObject private var camera = CameraCaptureController()
    @State private var phase: Phase = .ready
    @State private var navigated = false
    @State private var scanProgress: CGFloat = 0
    @State private var showKeyEntry = false
    @State private var snoutPulse = false
    @State private var keyDraft = ""
    @State private var pickedItem: PhotosPickerItem?

    private var isIdentifying: Bool { phase == .identifying }

    var body: some View {
        let screenW   = UIScreen.main.bounds.width
        let screenH   = UIScreen.main.bounds.height
        let topInset  = windowSafeAreaInsets.top
        let botInset  = windowSafeAreaInsets.bottom

        ZStack {
            // Screen-reader-only heading (opacity 0 would drop it from the
            // accessibility tree, so use an invisible accessible element)
            Color.clear
                .frame(width: 1, height: 1)
                .accessibilityElement()
                .accessibilityLabel("Camera — point at a fruit and tap the shutter to identify it")
                .accessibilityAddTraits(.isHeader)

            // Live camera preview
            CameraPreviewView(session: camera.session)
                .frame(width: screenW, height: screenH)
                .clipped()

            // Sensor vignette
            RadialGradient(colors: [.clear, Color.lpNavy.opacity(0.5)],
                           center: .init(x: 0.5, y: 0.42), startRadius: 80, endRadius: 280)

            // Scanline texture
            Canvas { ctx, size in
                for y in stride(from: 0, to: size.height, by: 3) {
                    let r = CGRect(x: 0, y: y, width: size.width, height: 1)
                    ctx.fill(Path(r), with: .color(.white.opacity(0.015)))
                }
            }

            // Top scrim
            LinearGradient(colors: [Color.lpNavy.opacity(0.62), .clear],
                           startPoint: .top, endPoint: .init(x: 0.5, y: 0.18))

            // Bottom scrim
            VStack(spacing: 0) {
                Spacer()
                LinearGradient(colors: [.clear, Color.lpNavy.opacity(0.4), Color.lpNavy.opacity(0.78)],
                               startPoint: .top, endPoint: .bottom)
                    .frame(height: 280)
            }

            // Content overlay
            VStack(spacing: 0) {
                // Top bar
                HStack {
                    GlassButton(bg: Color(hex: "#0a081e").opacity(0.32),
                                border: Color.white.opacity(0.22),
                                label: "Close") { router.popToRoot() } content: {
                        Image(systemName: "xmark")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.white)
                    }

                    Spacer()

                    // Status pill
                    HStack(spacing: 8) {
                        Circle()
                            .fill(statusColor)
                            .frame(width: 7, height: 7)
                            .shadow(color: statusColor.opacity(0.9), radius: isIdentifying ? 5 : 4)
                        Text(statusLabel)
                            .font(.geistMono(10.5))
                            .kerning(1.5)
                            .textCase(.uppercase)
                            .foregroundColor(.lpCream)
                    }
                    .padding(.leading, 11)
                    .padding(.trailing, 13)
                    .padding(.vertical, 7)
                    .background(Color(hex: "#0a081e").opacity(0.32))
                    .background(.ultraThinMaterial)
                    .clipShape(Capsule())
                    .overlay(Capsule().strokeBorder(Color.white.opacity(0.2), lineWidth: 1))
                    .accessibilityElement()
                    .accessibilityLabel(statusLabel)
                    .accessibilityAddTraits(.updatesFrequently)

                    Spacer()

                    // Flash toggle
                    GlassButton(bg: Color(hex: "#0a081e").opacity(0.32),
                                border: Color.white.opacity(0.22),
                                label: camera.flashOn ? "Flash on" : "Flash off") {
                        camera.flashOn.toggle()
                    } content: {
                        Image(systemName: camera.flashOn ? "bolt.fill" : "bolt.slash.fill")
                            .font(.system(size: 14))
                            .foregroundColor(camera.flashOn ? .lpGold : .lpCream.opacity(0.7))
                    }
                }
                .padding(.horizontal, 18)
                .padding(.top, topInset + 8)

                Spacer()

                // Reticle
                ZStack {
                    CornerBrackets(locked: isLocked)
                        .frame(width: 236, height: 236)

                    if !reduceMotion && isIdentifying {
                        Rectangle()
                            .fill(
                                LinearGradient(colors: [.clear, .lpGold, .clear],
                                               startPoint: .leading, endPoint: .trailing)
                            )
                            .frame(height: 2)
                            .shadow(color: Color.lpGold.opacity(0.65), radius: 8)
                            .modifier(ScanSweepEffect(progress: scanProgress))
                            .frame(width: 224, height: 220)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .animation(.easeInOut(duration: 2.2).repeatForever(autoreverses: false),
                                       value: scanProgress)
                    }
                }
                .frame(width: 236, height: 236)
                .overlay(alignment: .topLeading) {
                    if case .identified(let name, let confidence) = phase {
                        HStack(spacing: 8) {
                            LeafView(size: 15)
                            Text(name)
                                .font(.geist(15, weight: .semibold))
                                .tracking(-0.2)
                                .foregroundColor(.lpCream)
                            Text("\(confidence)%")
                                .font(.geistMono(11, weight: .medium))
                                .kerning(0.5)
                                .foregroundColor(.lpGold)
                        }
                        .padding(.horizontal, 13)
                        .padding(.vertical, 8)
                        .background(Color(hex: "#0a081e").opacity(0.5))
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .strokeBorder(Color.lpGold.opacity(0.85), lineWidth: 1)
                        )
                        .shadow(color: .black.opacity(0.7), radius: 14, x: 0, y: 5)
                        .offset(x: -2, y: -42)
                        .transition(.move(edge: .top).combined(with: .opacity))
                        .accessibilityElement(children: .ignore)
                        .accessibilityLabel("\(name), \(confidence) percent confidence")
                    }
                }

                Spacer()

                // Bottom hint
                Text(hintText)
                    .font(.geist(14, weight: .medium))
                    .foregroundColor(Color.lpCream.opacity(0.92))
                    .multilineTextAlignment(.center)
                    .shadow(color: Color.lpNavy.opacity(0.7), radius: 5)
                    .padding(.horizontal, 32)
                    .padding(.bottom, 26)
                    .accessibilityAddTraits(.updatesFrequently)

                // Control bar
                HStack {
                    // Gallery / upload
                    PhotosPicker(selection: $pickedItem, matching: .images) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 14)
                                .fill(Color.lpPurple.opacity(0.88))
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 14))
                                .overlay(RoundedRectangle(cornerRadius: 14).strokeBorder(Color.white.opacity(0.28), lineWidth: 1))
                                .frame(width: 52, height: 52)
                            CameraGalleryIcon()
                        }
                    }
                    .disabled(isIdentifying)
                    .accessibilityLabel("Identify a photo from your library")

                    Spacer()

                    // Shutter with confidence ring
                    Button { handleShutter() } label: {
                        // Per the reference, track and progress share one r=38 circle
                        // (76pt) inside the 86pt hit target; gold paints over the track.
                        ZStack {
                            Circle()
                                .stroke(Color.white.opacity(0.25), lineWidth: 3)
                                .frame(width: 76, height: 76)
                            Circle()
                                .trim(from: 0, to: ringProgress)
                                .stroke(Color.lpGold, style: StrokeStyle(lineWidth: 3, lineCap: .round))
                                .frame(width: 76, height: 76)
                                .rotationEffect(.degrees(-90))
                                .shadow(color: Color.lpGold.opacity(0.7), radius: 3)
                                .animation(.easeInOut(duration: 0.5), value: ringProgress)
                            Circle()
                                .fill(Color.lpCream)
                                .overlay(Circle().strokeBorder(Color.lpNavy.opacity(0.12), lineWidth: 2))
                                .frame(width: 68, height: 68)
                            if case .identified(_, let confidence) = phase {
                                Text("\(confidence)%")
                                    .font(.geistMono(10, weight: .semibold))
                                    .kerning(1)
                                    .foregroundColor(.lpPurple)
                            } else {
                                SnoutView(size: 34)
                                    .opacity(isIdentifying && !reduceMotion ? (snoutPulse ? 0.3 : 1) : 1)
                                    .animation(isIdentifying && !reduceMotion
                                               ? .easeInOut(duration: 0.7).repeatForever(autoreverses: true)
                                               : .default,
                                               value: snoutPulse)
                            }
                        }
                        .frame(width: 86, height: 86)
                    }
                    .disabled(isIdentifying)
                    .accessibilityLabel(isIdentifying ? "Identifying, please wait" : "Capture and identify")

                    Spacer()

                    // Flip camera
                    GlassButton(size: 52, bg: Color.lpPurple.opacity(0.88),
                                border: Color.white.opacity(0.28), label: "Flip camera") {
                        camera.flip()
                    } content: {
                        CameraFlipIcon()
                    }
                    .disabled(isIdentifying)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, botInset + 22)
            }
            .frame(width: screenW, height: screenH)

            if showKeyEntry {
                keyEntryOverlay
            }
        }
        .frame(width: screenW, height: screenH)
        .ignoresSafeArea()
        .toolbar(.hidden, for: .navigationBar)
        .onAppear {
            camera.start()
            // A configured proxy holds the key server-side, so only the
            // bring-your-own-key build needs to prompt.
            if !IdentifyBackend.usesProxy && ClaudeKeyStore.key == nil { showKeyEntry = true }
        }
        .onDisappear { camera.stop() }
        .onChange(of: isIdentifying) { identifying in
            snoutPulse = identifying
        }
        .onChange(of: pickedItem) { item in
            guard let item else { return }
            pickedItem = nil
            Task {
                if let data = try? await item.loadTransferable(type: Data.self),
                   let image = UIImage(data: data) {
                    identify(image)
                } else {
                    fail("Couldn't load that photo — try another.")
                }
            }
        }
    } // var body

    // MARK: - Phase-derived UI

    private var isLocked: Bool {
        if case .identified = phase { return true }
        return false
    }

    private var ringProgress: CGFloat {
        if case .identified(_, let confidence) = phase { return CGFloat(confidence) / 100 }
        return 0
    }

    private var statusLabel: String {
        switch phase {
        case .ready:       return "Ready"
        case .identifying: return "Identifying"
        case .identified:  return "Identified"
        case .error:       return "Try again"
        }
    }

    private var statusColor: Color {
        switch phase {
        case .error: return Color(hex: "#FF6F3C")
        default:     return Color(hex: "#39E08A")
        }
    }

    private var hintText: String {
        switch phase {
        case .ready:
            return "Point at a fruit and tap the shutter"
        case .identifying:
            return "Rooting around…"
        case .identified(let name, _):
            return "Identified · opening \(name)"
        case .error(let message):
            return message
        }
    }

    // MARK: - Flow

    private func handleShutter() {
        guard !isIdentifying, !navigated else { return }
        guard IdentifyBackend.usesProxy || ClaudeKeyStore.key != nil else { showKeyEntry = true; return }
        camera.capture { result in
            switch result {
            case .success(let image):
                identify(image)
            case .failure:
                fail("Camera unavailable — try a photo from your library.")
            }
        }
    }

    private func identify(_ image: UIImage) {
        guard IdentifyBackend.usesProxy || ClaudeKeyStore.key != nil else { showKeyEntry = true; return }
        withAnimation { phase = .identifying }
        scanProgress = 0
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { scanProgress = 1 }
        UIAccessibility.post(notification: .announcement, argument: "Identifying")

        Task {
            do {
                let result = try await FruitIdentifier().identify(image)
                await MainActor.run { handle(result) }
            } catch FruitIdentifierError.missingKey {
                await MainActor.run { phase = .ready; showKeyEntry = true }
            } catch {
                await MainActor.run { fail(error.localizedDescription) }
            }
        }
    }

    private func handle(_ result: FruitIdentification) {
        switch result {
        case .catalog(let fruit, let confidence), .generated(let fruit, let confidence):
            withAnimation { phase = .identified(name: fruit.name, confidence: confidence) }
            UIAccessibility.post(notification: .announcement, argument: "Identified: \(fruit.name)")
            DispatchQueue.main.asyncAfter(deadline: .now() + (reduceMotion ? 0.2 : 0.85)) {
                guard !navigated else { return }
                navigated = true
                router.push(.result(fruit))
            }
        case .notAFruit:
            guard !navigated else { return }
            navigated = true
            router.push(.noMatch)
        }
    }

    private func fail(_ message: String) {
        withAnimation { phase = .error(message) }
        UIAccessibility.post(notification: .announcement, argument: message)
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            if case .error = phase { withAnimation { phase = .ready } }
        }
    }

    // MARK: - API key entry

    private var keyEntryOverlay: some View {
        ZStack {
            Color.lpNavy.opacity(0.72).ignoresSafeArea()
                .onTapGesture { showKeyEntry = false }

            VStack(alignment: .leading, spacing: 14) {
                Text("Connect Claude")
                    .font(.geist(22, weight: .bold))
                    .tracking(-0.5)
                    .foregroundColor(.lpCream)
                    .accessibilityAddTraits(.isHeader)

                Text("Live fruit identification uses your Claude API key. It's stored only in this device's Keychain and sent only to Anthropic.")
                    .font(.geist(14))
                    .foregroundColor(.lpBody)
                    .fixedSize(horizontal: false, vertical: true)

                SecureField("sk-ant-…", text: $keyDraft)
                    .font(.geistMono(13))
                    .foregroundColor(.lpCream)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .padding(.horizontal, 14)
                    .padding(.vertical, 12)
                    .background(Color.lpNavy.opacity(0.6))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(Color.white.opacity(0.22), lineWidth: 1))

                HStack(spacing: 12) {
                    Button {
                        showKeyEntry = false
                    } label: {
                        Text("Not now")
                            .font(.geist(15, weight: .semibold))
                            .foregroundColor(.lpBody)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 13)
                            .background(Color.white.opacity(0.08))
                            .clipShape(Capsule())
                    }

                    Button {
                        ClaudeKeyStore.save(keyDraft)
                        keyDraft = ""
                        showKeyEntry = false
                    } label: {
                        Text("Save key")
                            .font(.geist(15, weight: .semibold))
                            .foregroundColor(.lpPurple)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 13)
                            .background(Color.lpGold)
                            .clipShape(Capsule())
                    }
                    .disabled(keyDraft.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                    .opacity(keyDraft.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? 0.5 : 1)
                }
            }
            .padding(22)
            .background(Color.lpPurple)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            .overlay(RoundedRectangle(cornerRadius: 22)
                .strokeBorder(Color.white.opacity(0.16), lineWidth: 1))
            .shadow(color: .black.opacity(0.5), radius: 30, y: 10)
            .padding(.horizontal, 28)
        }
        .transition(.opacity)
    }

    private var windowSafeAreaInsets: UIEdgeInsets {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?.windows.first?.safeAreaInsets ?? .zero
    }
}

// MARK: - Camera controller

final class CameraCaptureController: NSObject, ObservableObject {
    let session = AVCaptureSession()
    @Published var flashOn = false

    private let photoOutput = AVCapturePhotoOutput()
    private var configured = false
    private var position: AVCaptureDevice.Position = .back
    private var captureCompletion: ((Result<UIImage, Error>) -> Void)?

    func start() {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let self else { return }
            self.configureIfNeeded()
            if !self.session.isRunning { self.session.startRunning() }
        }
    }

    func stop() {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let self, self.session.isRunning else { return }
            self.session.stopRunning()
        }
    }

    func flip() {
        position = position == .back ? .front : .back
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            self?.reconfigureInput()
        }
    }

    func capture(completion: @escaping (Result<UIImage, Error>) -> Void) {
        guard configured, session.isRunning else {
            completion(.failure(NSError(domain: "LemonPig.Camera", code: 1)))
            return
        }
        captureCompletion = completion
        let settings = AVCapturePhotoSettings()
        if photoOutput.supportedFlashModes.contains(flashOn ? .on : .off) {
            settings.flashMode = flashOn ? .on : .off
        }
        photoOutput.capturePhoto(with: settings, delegate: self)
    }

    private func configureIfNeeded() {
        guard !configured else { return }
        session.beginConfiguration()
        session.sessionPreset = .photo
        guard let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: position),
              let input = try? AVCaptureDeviceInput(device: device),
              session.canAddInput(input),
              session.canAddOutput(photoOutput) else {
            session.commitConfiguration()
            return
        }
        session.addInput(input)
        session.addOutput(photoOutput)
        session.commitConfiguration()
        configured = true
    }

    private func reconfigureInput() {
        guard configured else { return }
        session.beginConfiguration()
        session.inputs.forEach { session.removeInput($0) }
        if let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: position),
           let input = try? AVCaptureDeviceInput(device: device),
           session.canAddInput(input) {
            session.addInput(input)
        }
        session.commitConfiguration()
    }
}

extension CameraCaptureController: AVCapturePhotoCaptureDelegate {
    func photoOutput(_ output: AVCapturePhotoOutput,
                     didFinishProcessingPhoto photo: AVCapturePhoto,
                     error: Error?) {
        let completion = captureCompletion
        captureCompletion = nil
        DispatchQueue.main.async {
            if let data = photo.fileDataRepresentation(), let image = UIImage(data: data) {
                completion?(.success(image))
            } else {
                completion?(.failure(error ?? NSError(domain: "LemonPig.Camera", code: 2)))
            }
        }
    }
}

// MARK: - Camera Preview

private struct CameraPreviewView: UIViewRepresentable {
    let session: AVCaptureSession

    func makeUIView(context: Context) -> PreviewUIView {
        let view = PreviewUIView(session: session)
        view.backgroundColor = UIColor(Color.lpNavy)
        return view
    }
    func updateUIView(_ uiView: PreviewUIView, context: Context) {}
}

private final class PreviewUIView: UIView {
    private let previewLayer: AVCaptureVideoPreviewLayer

    init(session: AVCaptureSession) {
        previewLayer = AVCaptureVideoPreviewLayer(session: session)
        previewLayer.videoGravity = .resizeAspectFill
        super.init(frame: .zero)
        layer.insertSublayer(previewLayer, at: 0)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    override func layoutSubviews() {
        super.layoutSubviews()
        previewLayer.frame = bounds
    }
}

// MARK: - Camera Icons

private struct CameraGalleryIcon: View {
    var body: some View {
        Canvas { ctx, size in
            let s = size.width / 24
            let style16 = StrokeStyle(lineWidth: 1.6 * s, lineJoin: .round)
            let w = GraphicsContext.Shading.color(.white)
            let rect = Path(roundedRect: CGRect(x: 3.5*s, y: 4.5*s, width: 17*s, height: 15*s), cornerRadius: 2.5*s)
            ctx.stroke(rect, with: w, style: style16)
            let dot = Path(ellipseIn: CGRect(x: (8.5-1.7)*s, y: (9.5-1.7)*s, width: 3.4*s, height: 3.4*s))
            ctx.fill(dot, with: w)
            var mtn = Path()
            mtn.move(to:    CGPoint(x: 4*s,  y: 17*s))
            mtn.addLine(to: CGPoint(x: 8.5*s, y: 12.5*s))
            mtn.addLine(to: CGPoint(x: 12*s, y: 15.5*s))
            mtn.addLine(to: CGPoint(x: 15*s, y: 13*s))
            mtn.addLine(to: CGPoint(x: 20*s, y: 17.5*s))
            ctx.stroke(mtn, with: w, style: style16)
        }
        .frame(width: 22, height: 22)
    }
}

private struct CameraFlipIcon: View {
    var body: some View {
        Canvas { ctx, size in
            let s = size.width / 24
            let style = StrokeStyle(lineWidth: 1.6*s, lineCap: .round, lineJoin: .round)
            let w = GraphicsContext.Shading.color(.white)
            var p1 = Path(); p1.move(to: CGPoint(x: 4*s, y: 9*s))
            p1.addCurve(to: CGPoint(x: 17.5*s, y: 5.5*s),
                        control1: CGPoint(x: 4*s,   y: 1*s),
                        control2: CGPoint(x: 17.5*s, y: 1*s))
            p1.addLine(to: CGPoint(x: 20*s, y: 8*s))
            ctx.stroke(p1, with: w, style: style)
            var p2 = Path()
            p2.move(to: CGPoint(x: 20*s, y: 4*s))
            p2.addLine(to: CGPoint(x: 20*s, y: 8*s))
            p2.addLine(to: CGPoint(x: 16*s, y: 8*s))
            ctx.stroke(p2, with: w, style: style)
            var p3 = Path(); p3.move(to: CGPoint(x: 20*s, y: 15*s))
            p3.addCurve(to: CGPoint(x: 6.5*s, y: 18.5*s),
                        control1: CGPoint(x: 20*s,  y: 23*s),
                        control2: CGPoint(x: 6.5*s, y: 23*s))
            p3.addLine(to: CGPoint(x: 4*s, y: 16*s))
            ctx.stroke(p3, with: w, style: style)
            var p4 = Path()
            p4.move(to: CGPoint(x: 4*s, y: 20*s))
            p4.addLine(to: CGPoint(x: 4*s, y: 16*s))
            p4.addLine(to: CGPoint(x: 8*s, y: 16*s))
            ctx.stroke(p4, with: w, style: style)
        }
        .frame(width: 22, height: 22)
    }
}

// MARK: - Scan Sweep

// Matches the reference's camScan keyframes: one-directional sweep
// translateY(-92px → 92px) with opacity 0 → 1 by 14% and 1 → 0 after 86%.
private struct ScanSweepEffect: AnimatableModifier {
    var progress: CGFloat // 0...1

    var animatableData: CGFloat {
        get { progress }
        set { progress = newValue }
    }

    private var opacity: Double {
        let p = Double(progress)
        if p < 0.14 { return p / 0.14 }
        if p > 0.86 { return (1 - p) / 0.14 }
        return 1
    }

    func body(content: Content) -> some View {
        content
            .offset(y: -92 + 184 * progress)
            .opacity(opacity)
    }
}

// MARK: - Corner Brackets

private struct CornerBrackets: View {
    let locked: Bool
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var glow = false

    var body: some View {
        ZStack {
            ForEach(0..<4) { i in
                CornerBracket(corner: i, locked: locked)
            }
        }
        // cornerGlow: opacity 0.85 ↔ 1 over a 2.4s cycle
        .opacity(reduceMotion ? 1 : (glow ? 1 : 0.85))
        .animation(reduceMotion ? nil : .easeInOut(duration: 1.2).repeatForever(autoreverses: true),
                   value: glow)
        .onAppear { glow = true }
    }
}

private struct CornerBracket: View {
    let corner: Int  // 0=TL 1=TR 2=BL 3=BR
    let locked: Bool

    private var isRight: Bool { corner == 1 || corner == 3 }
    private var isBottom: Bool { corner == 2 || corner == 3 }

    var body: some View {
        GeometryReader { geo in
            let w = geo.size.width
            let h = geo.size.height
            let bw: CGFloat = 34
            let stroke: CGFloat = 3
            let r: CGFloat = 14
            let x: CGFloat = isRight ? w - bw + 2 : -2
            let y: CGFloat = isBottom ? h - bw + 2 : -2

            Path { p in
                if !isRight && !isBottom { // TL
                    p.move(to: CGPoint(x: x + bw, y: y + stroke/2))
                    p.addLine(to: CGPoint(x: x + r, y: y + stroke/2))
                    p.addArc(center: CGPoint(x: x + r, y: y + r),
                             radius: r - stroke/2, startAngle: .degrees(-90), endAngle: .degrees(180), clockwise: true)
                    p.addLine(to: CGPoint(x: x + stroke/2, y: y + bw))
                } else if isRight && !isBottom { // TR
                    p.move(to: CGPoint(x: x, y: y + stroke/2))
                    p.addLine(to: CGPoint(x: x + bw - r, y: y + stroke/2))
                    p.addArc(center: CGPoint(x: x + bw - r, y: y + r),
                             radius: r - stroke/2, startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
                    p.addLine(to: CGPoint(x: x + bw - stroke/2, y: y + bw))
                } else if !isRight && isBottom { // BL
                    p.move(to: CGPoint(x: x + stroke/2, y: y))
                    p.addLine(to: CGPoint(x: x + stroke/2, y: y + bw - r))
                    p.addArc(center: CGPoint(x: x + r, y: y + bw - r),
                             radius: r - stroke/2, startAngle: .degrees(180), endAngle: .degrees(90), clockwise: true)
                    p.addLine(to: CGPoint(x: x + bw, y: y + bw - stroke/2))
                } else { // BR
                    p.move(to: CGPoint(x: x + bw - stroke/2, y: y))
                    p.addLine(to: CGPoint(x: x + bw - stroke/2, y: y + bw - r))
                    p.addArc(center: CGPoint(x: x + bw - r, y: y + bw - r),
                             radius: r - stroke/2, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)
                    p.addLine(to: CGPoint(x: x, y: y + bw - stroke/2))
                }
            }
            .stroke(Color.lpGold, style: StrokeStyle(lineWidth: stroke, lineCap: .round))
            .shadow(color: Color.lpGold.opacity(0.6), radius: 3)
        }
    }
}
