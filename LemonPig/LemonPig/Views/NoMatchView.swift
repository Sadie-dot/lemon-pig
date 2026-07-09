import SwiftUI

struct NoMatchView: View {
    var source: NoMatchSource = .camera
    @EnvironmentObject var router: AppRouter
    @Environment(\.accessibilityReduceMotion) var reduceMotion

    @State private var floatOffset: CGFloat = 0
    @State private var wispOffset: CGFloat = 0
    @State private var appeared = false

    // Matches design reference: left 38%/50%/62%, top 34%/30%/34% of the 230×188 mascot box,
    // offset by the wisp glyph's own half-size (12.5, 19.5) since .position sets the view's center.
    private let wispAnchors: [(x: CGFloat, y: CGFloat, delay: Double)] = [
        (0.38 + 12.5/230, 0.34 + 19.5/188, 0.0),
        (0.50 + 12.5/230, 0.30 + 19.5/188, 0.5),
        (0.62 + 12.5/230, 0.34 + 19.5/188, 1.1)
    ]

    var body: some View {
        ZStack {
            Color.lpPurple.ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                // Mascot moment
                VStack(spacing: 0) {
                    ZStack(alignment: .topLeading) {
                        Color.clear

                        // Sniff wisps — anchored at the nostrils, drifting up
                        ForEach(Array(wispAnchors.enumerated()), id: \.offset) { i, anchor in
                            if reduceMotion {
                                WispView(delayFraction: anchor.delay)
                                    .position(x: anchor.x * 230, y: anchor.y * 188)
                                    .opacity(0.7)
                            } else {
                                WispView(delayFraction: anchor.delay)
                                    .position(x: anchor.x * 230, y: anchor.y * 188)
                                    .modifier(WispRiseEffect(progress: wispOffset))
                                    .animation(
                                        .linear(duration: 2.4).repeatForever(autoreverses: false)
                                            .delay(anchor.delay),
                                        value: wispOffset
                                    )
                            }
                        }

                        // Snout mark
                        SnoutView(size: 172)
                            .position(x: 115, y: 94)
                            .offset(y: reduceMotion ? 0 : floatOffset)
                            // floatY: full 0 → -7 → 0 cycle in 4.5s
                            .animation(
                                reduceMotion ? nil : .easeInOut(duration: 2.25).repeatForever(autoreverses: true),
                                value: floatOffset
                            )
                            .shadow(color: Color.lpNavy.opacity(0.45), radius: 14, x: 0, y: 4)
                            .accessibilityHidden(true)
                    }
                    .frame(width: 230, height: 188)

                    Text("Oinks! Couldn't\nsniff this one out.")
                        .font(.geist(28, weight: .bold))
                        .tracking(-0.8)
                        .foregroundColor(.lpCream)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                        .padding(.horizontal, 38)
                        .padding(.top, 2)
                        .accessibilityAddTraits(.isHeader)
                        // riseIn: transform-only slide-up (460ms, 80ms delay)
                        .offset(y: appeared || reduceMotion ? 0 : 14)
                        .animation(reduceMotion ? nil : .easeOut(duration: 0.46).delay(0.08),
                                   value: appeared)
                }

                Spacer()

                // Recovery actions
                VStack(spacing: 16) {
                    HairlineDivider()

                    // Coming from search, no photo was ever taken — offer the
                    // camera as the path that *can* identify this fruit.
                    GoldPillButton(source == .search ? "Identify with camera" : "Try another photo") {
                        router.popToRoot()
                        DispatchQueue.main.async { router.push(.camera) }
                    } icon: {
                        Image(systemName: source == .search ? "camera" : "arrow.triangle.2.circlepath")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.lpInk)
                    }

                    HStack(spacing: 6) {
                        Button {
                            router.popToRoot()
                        } label: {
                            HStack(spacing: 7) {
                                Image(systemName: "magnifyingglass")
                                    .font(.system(size: 13))
                                    .accessibilityHidden(true)
                                Text(source == .search ? "Try another name" : "Search by name")
                                    .font(.geist(14, weight: .medium))
                                    .tracking(-0.1)
                            }
                            .foregroundColor(Color.lpCream.opacity(0.66))
                            .frame(minHeight: LP.minTap)
                            .padding(.horizontal, 12)
                        }

                        Rectangle()
                            .fill(Color.lpCream.opacity(0.2))
                            .frame(width: 1, height: 15)
                            .accessibilityHidden(true)

                        Button {
                            router.popToRoot()
                            DispatchQueue.main.async { router.push(.taste(nil)) }
                        } label: {
                            HStack(spacing: 7) {
                                LeafView(size: 14, fillColor: Color.lpCream.opacity(0.66))
                                    .accessibilityHidden(true)
                                Text("Browse instead")
                                    .font(.geist(14, weight: .medium))
                                    .tracking(-0.1)
                            }
                            .foregroundColor(Color.lpCream.opacity(0.66))
                            .frame(minHeight: LP.minTap)
                            .padding(.horizontal, 12)
                        }
                    }
                }
                .padding(.horizontal, 26)
                .padding(.top, 16)
                .padding(.bottom, 36)
                // riseIn: transform-only slide-up (460ms, 240ms delay)
                .offset(y: appeared || reduceMotion ? 0 : 14)
                .animation(reduceMotion ? nil : .easeOut(duration: 0.46).delay(0.24),
                           value: appeared)
            }
            // Reference actions end 36pt above the physical bottom
            .ignoresSafeArea(edges: .bottom)
        }
        .navigationBarHidden(true)
        .onAppear {
            floatOffset = -7
            wispOffset = 1
            appeared = true
        }
    }
}

// MARK: - Wisp Rise Effect

// Matches the design reference's sniffWisp keyframes exactly:
// 0% { translate(0,0) scale(0.7); opacity 0 } 25% { opacity 0.95 } 100% { translate(3px,-56px) scale(1.05); opacity 0 }
// Interpolates offset/opacity/scale per-frame from the animated progress value,
// since a plain .opacity(...) only interpolates between the two snapshot
// endpoints (both ~0) rather than the curve in between.
private struct WispRiseEffect: AnimatableModifier {
    var progress: CGFloat // 0...1

    var animatableData: CGFloat {
        get { progress }
        set { progress = newValue }
    }

    private var opacity: Double {
        let p = Double(progress)
        if p < 0.25 { return (p / 0.25) * 0.95 }
        return 0.95 * (1 - (p - 0.25) / 0.75)
    }

    func body(content: Content) -> some View {
        content
            .scaleEffect(0.7 + 0.35 * progress)
            .offset(x: 3 * progress, y: -56 * progress)
            .opacity(opacity)
    }
}

// MARK: - Wisp

private struct WispView: View {
    let delayFraction: Double
    @State private var phase: CGFloat = 0
    @Environment(\.accessibilityReduceMotion) var reduceMotion

    var body: some View {
        Canvas { ctx, sz in
            let path = wispPath(in: sz)
            ctx.stroke(path, with: .color(Color.lpGold),
                       style: StrokeStyle(lineWidth: 2, lineCap: .round, dash: [1.5, 6]))
        }
        .frame(width: 25, height: 39)
    }

    // Matches the design reference's S-curve viewBox 22x34:
    // M11 32 C3 26 19 22 11 16 C3 10 19 6 11 1
    private func wispPath(in size: CGSize) -> Path {
        let s = size.width / 22
        var p = Path()
        p.move(to: CGPoint(x: 11*s, y: 32*s))
        p.addCurve(to: CGPoint(x: 11*s, y: 16*s),
                   control1: CGPoint(x: 3*s,  y: 26*s),
                   control2: CGPoint(x: 19*s, y: 22*s))
        p.addCurve(to: CGPoint(x: 11*s, y: 1*s),
                   control1: CGPoint(x: 3*s,  y: 10*s),
                   control2: CGPoint(x: 19*s, y: 6*s))
        return p
    }
}
