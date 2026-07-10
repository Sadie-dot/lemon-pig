import SwiftUI

private struct Fact {
    let pre: String; let highlight: String; let post: String
    var fullText: String { pre + highlight + post }
}

private let facts: [Fact] = [
    Fact(pre: "",     highlight: "Bananas",      post: " are botanically berries — but strawberries are not."),
    Fact(pre: "A ",   highlight: "dragon fruit", post: " flower blooms for a single night, opening only after dark."),
    Fact(pre: "A ",   highlight: "pineapple",    post: " takes nearly two years to grow one ripe fruit."),
    Fact(pre: "",     highlight: "Lemons",       post: " float while limes sink — limes are simply denser than water."),
    Fact(pre: "Each ",highlight: "fig",          post: " is a cluster of flowers blooming inward, not a single fruit."),
    Fact(pre: "A ",   highlight: "strawberry",   post: " wears its two hundred seeds on the outside — and each seed is its own tiny fruit."),
    Fact(pre: "",     highlight: "Avocados",     post: " refuse to ripen on the tree — growers use them as living storage, picking as needed."),
    Fact(pre: "",     highlight: "Durian",       post: " smells so mighty it's banned on Singapore's subway."),
    Fact(pre: "Ripe ",highlight: "cranberries",  post: " bounce — growers really do sort good ones by bouncing them."),
    Fact(pre: "A ",   highlight: "watermelon",   post: " is a berry by botany's rules — one that's about 92 percent water."),
    Fact(pre: "",     highlight: "Grapes",       post: " never sweeten after picking — what you buy is as ripe as they'll ever be."),
    Fact(pre: "One ", highlight: "pomegranate",  post: " can pack six hundred jewel-like seeds inside its leathery rind."),
    Fact(pre: "The ", highlight: "kiwi",         post: " was called the Chinese gooseberry until 1959, when New Zealand growers renamed it."),
    Fact(pre: "A ",   highlight: "coconut",      post: " isn't a nut — it's a stone fruit like a peach, built to float across oceans."),
    Fact(pre: "Crack a ", highlight: "peach",    post: " pit and the kernel looks like an almond — the two trees are close cousins."),
    Fact(pre: "Every ",   highlight: "orange",   post: " is an ancient hybrid of pomelo and mandarin — there is no wild orange."),
    Fact(pre: "A ",   highlight: "jackfruit",    post: " can outweigh a five-year-old — it's the largest fruit that grows on trees.")
]

private let tasteRows: [[(label: String, flavorKey: FlavorKey, color: Color)]] = [
    [("Sweet", "Sweet", .lpSweet), ("Sweet-Sour", "Sweet-sour", .lpSweetSour), ("Tart", "Tart", .lpTart)],
    [("Tropical", "Tropical", .lpTropical), ("Creamy", "Creamy", .lpCreamy), ("Citrusy", "Citrusy", .lpCitrusy)]
]

struct HomeView: View {
    @EnvironmentObject var router: AppRouter
    @State private var searchText = ""
    @State private var factIndex = 0
    @State private var hasAppeared = false
    @State private var showAIDisclosure = false
    @State private var showPhotoCredits = false
    @State private var identifyPhase: IdentifyPhase = .idle
    @State private var identifyTask: Task<Void, Never>?
    @FocusState private var searchFocused: Bool

    enum IdentifyPhase: Equatable {
        case idle
        case identifying(String)
        case error(String)
    }

    // The design's 132pt hero includes a 50pt status-bar mock; extend it by
    // the device's extra top inset so the bottom-anchored wordmark keeps the
    // designed clearance from the Dynamic Island. Scales with Dynamic Type so
    // the enlarged wordmark doesn't collide with the island.
    @ScaledMetric(relativeTo: .body) private var heroBase: CGFloat = 132

    private var heroHeight: CGFloat {
        heroBase + max(0, windowSafeAreaInsets.top - 50)
    }

    private var windowSafeAreaInsets: UIEdgeInsets {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?.windows.first?.safeAreaInsets ?? .zero
    }

    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    CTACard()
                        .padding(.top, max(0, heroHeight - geo.safeAreaInsets.top) + 22)
                    SearchField(text: $searchText, isFocused: $searchFocused) { submitSearch() }
                        .padding(.top, 30)
                    ExploreByTaste()
                        .padding(.top, 12)
                    Spacer(minLength: 8)
                    VStack(spacing: 0) {
                        FruitFactBlock(factIndex: factIndex) {
                            withAnimation(.none) { factIndex = (factIndex + 1) % facts.count }
                            // aria-live equivalent: announce the new fact
                            UIAccessibility.post(notification: .announcement,
                                                 argument: facts[factIndex].fullText)
                        }
                        HomeSignOff(isDisclosurePresented: $showAIDisclosure,
                                    isCreditsPresented: $showPhotoCredits)
                            // Reclaim the Dynamic Island hero extension here so
                            // the flexible gap above the fact block stays at
                            // reference size (26pt on devices without one).
                            .padding(.top, max(0, 26 - (heroHeight - heroBase)))
                            .padding(.bottom, 24)
                    }
                }
                .padding(.horizontal, 26)
                .frame(minHeight: geo.size.height)
            }
        }
        // The design pins the footer to the physical bottom (its 24pt padding
        // includes the home-indicator zone); extend under the bottom safe area
        // so the flexible gap above the fact block matches the reference.
        .ignoresSafeArea(edges: .bottom)
        .frame(maxWidth: .infinity)
        .background {
            ZStack(alignment: .top) {
                Color.lpPurple.ignoresSafeArea()
                VStack(spacing: 0) {
                    heroBackground
                        .frame(height: heroHeight)
                        .clipped()
                        .overlay(alignment: .bottomLeading) {
                            HomeHeroText()
                        }
                    Spacer()
                }
                .ignoresSafeArea(edges: .top)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture { searchFocused = false }
        .navigationBarHidden(true)
        .overlay {
            if showAIDisclosure {
                AIDisclosureOverlay {
                    withAnimation(.easeOut(duration: 0.18)) { showAIDisclosure = false }
                }
            }
            if showPhotoCredits {
                PhotoCreditsOverlay {
                    withAnimation(.easeOut(duration: 0.18)) { showPhotoCredits = false }
                }
            }
            if case .identifying(let name) = identifyPhase {
                IdentifyingOverlay(name: name, onCancel: cancelIdentify)
            }
            if case .error(let message) = identifyPhase {
                IdentifyErrorOverlay(message: message) {
                    withAnimation(.easeOut(duration: 0.18)) { identifyPhase = .idle }
                }
            }
        }
        .onDisappear { cancelIdentify() }
        // Fires on every pop back to home (NavigationStack re-appears the
        // root), so each return shows the next fact; first launch keeps #1.
        .onAppear {
            if hasAppeared { factIndex = (factIndex + 1) % facts.count }
            hasAppeared = true
        }
    }

    private func submitSearch() {
        guard identifyPhase == .idle else { return }
        let q = searchText.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        guard !q.isEmpty else { return }

        // An exact flavor name ("sweet") opens the taste page; otherwise the
        // catalog wins, so "sweet grape" lands on the fruit, not the flavor.
        // Landing somewhere clears the field; a search that dead-ends (no
        // match, error, cancel) keeps its text so it can be edited.
        if let flavor = allFlavors.first(where: { $0.key.lowercased() == q }) {
            searchText = ""
            router.push(.taste(flavor.key))
        } else if let fruit = searchCatalogFruit(q) {
            searchText = ""
            router.push(.result(fruit))
        } else if let fruit = fuzzyCatalogFruit(q) {
            // Near-miss typo of a catalog name — resolve locally rather than
            // spending a live identification on it.
            searchText = ""
            router.push(.result(fruit))
        } else if let flavor = allFlavors.first(where: { $0.key.lowercased().contains(q) }) {
            // A partial flavor word ("swee") still opens the taste page, but a
            // fruit name that merely contains one ("sweetsop") goes live.
            searchText = ""
            router.push(.taste(flavor.key))
        } else {
            identifyLive(searchText.trimmingCharacters(in: .whitespacesAndNewlines))
        }
    }

    // MARK: Live identification by name

    private func identifyLive(_ name: String) {
        // BYO-key builds with no key stored can't identify; the classic
        // no-match screen (whose primary action leads to the camera, which
        // owns the key-entry flow) beats a dead-end error here.
        guard IdentifyBackend.usesProxy || ClaudeKeyStore.key != nil else {
            router.push(.noMatch(.search))
            return
        }
        searchFocused = false
        withAnimation(.easeOut(duration: 0.18)) { identifyPhase = .identifying(name) }
        UIAccessibility.post(notification: .announcement, argument: "Identifying \(name)")

        identifyTask = Task {
            do {
                let result = try await FruitIdentifier().identify(name: name)
                guard !Task.isCancelled else { return }
                await MainActor.run { handleIdentification(result) }
            } catch FruitIdentifierError.missingKey {
                await MainActor.run {
                    identifyPhase = .idle
                    router.push(.noMatch(.search))
                }
            } catch {
                // URLSession surfaces cancellation as an error; stay quiet then.
                guard !Task.isCancelled else { return }
                await MainActor.run { failIdentification(error.localizedDescription) }
            }
        }
    }

    private func handleIdentification(_ result: FruitIdentification) {
        withAnimation(.easeOut(duration: 0.18)) { identifyPhase = .idle }
        switch result {
        case .catalog(let fruit, _), .generated(let fruit, _):
            UIAccessibility.post(notification: .announcement, argument: "Identified: \(fruit.name)")
            searchText = ""
            router.push(.result(fruit))
        case .notAFruit:
            // Not a success — keep the text visible for editing.
            router.push(.noMatch(.search))
        }
    }

    private func failIdentification(_ message: String) {
        withAnimation(.easeOut(duration: 0.18)) { identifyPhase = .error(message) }
        UIAccessibility.post(notification: .announcement, argument: message)
    }

    private func cancelIdentify() {
        identifyTask?.cancel()
        identifyTask = nil
        if case .identifying = identifyPhase {
            withAnimation(.easeOut(duration: 0.18)) { identifyPhase = .idle }
        }
    }
}

// MARK: - Hero

// Wordmark only — no background, no ignoresSafeArea anywhere in this view
// Overlaid on the hero image, bottom-leading — matches the spec's
// absolutely-positioned wordmark, so it doesn't add its own flow height.
private struct HomeHeroText: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Lemon Pig")
                .font(.pacifico(35))
                .foregroundColor(.lpGold)
                .shadow(color: Color.lpNavy.opacity(0.6), radius: 7, x: 0, y: 2)
                .accessibilityAddTraits(.isHeader)
            Text("Oh, fruit!")
                .font(.geist(14, weight: .medium))
                .kerning(0.2)
                .foregroundColor(Color.lpCream.opacity(0.9))
                .shadow(color: Color.lpNavy.opacity(0.5), radius: 4, x: 0, y: 1)
                .offset(y: -14)
        }
        .padding(.leading, 26)
        .padding(.bottom, 20)
    }
}

private var heroBackground: some View {
    ZStack {
        // Image is overlaid on a clear layer sized to the container, so the
        // fill overflow can't inflate the ZStack and misalign the scrims.
        if let img = UIImage(named: "lemons-bg") {
            Color.clear
                .overlay(
                    Image(uiImage: img)
                        .resizable()
                        .scaledToFill()
                )
        } else {
            Color.lpNavy
        }
        LinearGradient(
            stops: [
                .init(color: Color.lpNavy.opacity(0.62),   location: 0),
                .init(color: Color.lpNavy.opacity(0.30),   location: 0.22),
                .init(color: Color.lpPurple.opacity(0.40), location: 0.44),
                .init(color: Color.lpPurple.opacity(0.66), location: 0.64),
                .init(color: Color.lpPurple.opacity(0.86), location: 0.84),
                .init(color: Color.lpPurple,               location: 0.99)
            ],
            startPoint: .top, endPoint: .bottom
        )
        // Second bottom-up dissolve so the wordmark reads
        VStack {
            Spacer(minLength: 0)
            LinearGradient(
                stops: [
                    .init(color: Color(hex: "#281262").opacity(0),    location: 0),
                    .init(color: Color(hex: "#281262").opacity(0.12), location: 0.20),
                    .init(color: Color(hex: "#281262").opacity(0.40), location: 0.46),
                    .init(color: Color(hex: "#281262").opacity(0.72), location: 0.74),
                    .init(color: Color.lpPurple,                      location: 1.00)
                ],
                startPoint: .top, endPoint: .bottom
            )
            .frame(height: 116)
        }
    }
    .accessibilityHidden(true)
}

// MARK: - CTA Card

private struct CTACard: View {
    @EnvironmentObject var router: AppRouter
    var body: some View {
        Button {
            router.push(.camera)
        } label: {
            HStack(alignment: .center, spacing: 14) {
                VStack(alignment: .leading, spacing: 9) {
                    // "ID from photo" badge
                    Text("ID from photo")
                        .font(.geist(10, weight: .bold))
                        .kerning(0.8)
                        .textCase(.uppercase)
                        .foregroundColor(.lpInk)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 3)
                        .background(Color.lpGold)
                        .clipShape(Capsule())

                    VStack(alignment: .leading, spacing: 3) {
                        Text("Snap or Upload")
                            .font(.geist(21, weight: .bold))
                            .tracking(-0.4)
                            .foregroundColor(.lpInk)
                            .lineLimit(1)
                        Text("Identify any fruit instantly")
                            .font(.geist(13, weight: .medium))
                            .foregroundColor(Color.lpInk.opacity(0.66))
                    }
                }

                Spacer(minLength: 0)

                // Camera circle
                ZStack {
                    Circle()
                        .fill(Color.lpPurple)
                        .frame(width: 46, height: 46)
                    Image(systemName: "camera")
                        .font(.system(size: 18, weight: .regular))
                        .foregroundColor(.lpCream)
                }
                .flexibleFrame()
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 18)
            .background(Color.lpCream)
            .cornerRadius(16)
            // Inset top highlight (CSS: inset 0 1px 0 rgba(255,255,255,0.6))
            .overlay(alignment: .top) {
                Rectangle()
                    .fill(Color.white.opacity(0.6))
                    .frame(height: 1)
                    .padding(.horizontal, 14)
                    .padding(.top, 1)
            }
            .overlay(RoundedRectangle(cornerRadius: 16).strokeBorder(Color.white.opacity(0.4), lineWidth: 1))
            // CSS: 0 12px 30px -16px rgba(0,0,0,0.5) — the -16 spread shrinks the
            // shadow caster; emulate with an inset shape hidden behind the card
            .background(
                RoundedRectangle(cornerRadius: 1)
                    .fill(.black)
                    .padding(16)
                    .shadow(color: .black.opacity(0.5), radius: 15, x: 0, y: 12)
            )
        }
        .buttonStyle(.plain)
        .accessibilityLabel("Snap or Upload — identify any fruit instantly")
    }
}

// MARK: - Search

private struct SearchField: View {
    @Binding var text: String
    var isFocused: FocusState<Bool>.Binding
    let onSubmit: () -> Void
    @ScaledMetric(relativeTo: .body) private var fieldHeight: CGFloat = 48

    var body: some View {
        HStack(spacing: 8) {
            TextField("", text: $text, prompt:
                Text("Search: papaya, dragon fruit, etc.")
                    .font(.geist(15, weight: .medium))
                    .foregroundColor(Color.lpCream.opacity(0.82))
            )
            .font(.geist(15, weight: .medium))
            .foregroundColor(.lpCream)
            .submitLabel(.search)
            .onSubmit(onSubmit)
            .focused(isFocused)
            .accessibilityLabel("Search fruit by name")
            .padding(.leading, 16)

            if !text.isEmpty {
                Button {
                    text = ""
                    isFocused.wrappedValue = true
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color.lpCream.opacity(0.55))
                        .frame(width: LP.minTap, height: LP.minTap)
                        .contentShape(Rectangle())
                }
                .accessibilityLabel("Clear search text")
            }

            Button(action: onSubmit) {
                ZStack {
                    Circle()
                        .fill(Color.lpGold)
                        .frame(width: 44, height: 44)
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.lpInk)
                }
            }
            .accessibilityLabel("Search")
        }
        .frame(height: fieldHeight)
        .padding(.trailing, 6)
        .background(Color.white.opacity(0.05))
        .overlay(Capsule().strokeBorder(Color.lpCream.opacity(0.22), lineWidth: 1))
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .strokeBorder(Color.lpGold, lineWidth: 2)
                .padding(-4) // outline-offset: 2px + 2px outline width, outside the pill
                .opacity(isFocused.wrappedValue ? 1 : 0)
        )
    }
}

// MARK: - Explore by taste

private struct ExploreByTaste: View {
    @EnvironmentObject var router: AppRouter

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Explore by taste")
                .font(.geistMono(11, weight: .regular))
                .kerning(2)
                .textCase(.uppercase)
                .foregroundColor(Color.lpCream.opacity(0.82))
                .padding(.bottom, 13)

            VStack(alignment: .leading, spacing: 9) {
                ForEach(tasteRows.indices, id: \.self) { ri in
                    HStack(spacing: 9) {
                        ForEach(tasteRows[ri], id: \.label) { chip in
                            TasteChip(label: chip.label, color: chip.color) {
                                router.push(.taste(chip.flavorKey))
                            }
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.bottom, 34)
    }
}

private struct TasteChipDot: View {
    let color: Color
    @Environment(\.tasteDotPressed) var pressed
    var body: some View {
        Circle()
            .fill(pressed ? Color.lpNavy : color)
            .frame(width: 8, height: 8)
            .overlay {
                if !pressed { // reference hover: box-shadow none
                    Circle().strokeBorder(Color.white.opacity(0.08), lineWidth: 2)
                }
            }
    }
}

private struct TasteChip: View {
    let label: String
    let color: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                TasteChipDot(color: color)
                Text(label)
                    .font(.geist(13, weight: .medium))
                    .tracking(-0.1)
                    .lineLimit(1)
            }
            .padding(.horizontal, 15)
            .frame(minHeight: 44)
        }
        .buttonStyle(TasteChipStyle(dotColor: color))
        .accessibilityLabel("Browse \(label) fruits")
    }
}

// MARK: - Fruit fact block

private struct FruitFactBlock: View {
    let factIndex: Int
    let onTap: () -> Void

    var body: some View {
        let fact = facts[factIndex]
        // Whole block is one tap target that cycles facts (matches reference)
        Button(action: onTap) {
            VStack(alignment: .leading, spacing: 0) {
                // Gold hairline divider
                Rectangle()
                    .fill(Color.lpGold.opacity(0.5))
                    .frame(height: 1)
                    .padding(.bottom, 16)

                Text("Did you know?")
                    .font(.geist(14, weight: .semibold))
                    .tracking(-0.1)
                    .foregroundColor(.lpGold)

                (Text(fact.pre)
                    + Text(fact.highlight).fontWeight(.semibold).foregroundColor(.lpGold)
                    + Text(fact.post))
                    .font(.geist(16.5))
                    .foregroundColor(.lpCream)
                    .lineSpacing(3) // lh 1.5 × 16.5 ≈ 24.75pt pitch
                    .tracking(-0.2)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 11)

                HStack(spacing: 6) {
                    Text("Tap for another")
                        .font(.geist(12, weight: .semibold))
                        .foregroundColor(Color.lpCream.opacity(0.92))
                    Image(systemName: "arrow.clockwise")
                        .font(.system(size: 11, weight: .semibold))
                        .foregroundColor(Color.lpCream.opacity(0.92))
                        .accessibilityHidden(true)
                }
                .padding(.top, 14)
            }
            .padding(.vertical, 4)
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .accessibilityLabel("Did you know? \(fact.fullText)")
        .accessibilityHint("Shows another fruit fact")
    }
}

// MARK: - Sign-off

private struct HomeSignOff: View {
    @Binding var isDisclosurePresented: Bool
    @Binding var isCreditsPresented: Bool
    var body: some View {
        VStack(spacing: 6) {
            if let img = UIImage(named: "mascot-line") {
                Image(uiImage: img)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .accessibilityHidden(true)
            }

            Text("Just Fruit · No pork")
                .font(.geistMono(11))
                .kerning(1.6)
                .textCase(.uppercase)
                .foregroundColor(Color.lpCream.opacity(0.82))

            HStack(spacing: 14) {
                Text("AI Disclosure")
                    .font(.geist(11, weight: .medium))
                    .foregroundColor(.lpCream)
                    .underline(true, color: Color.lpCream.opacity(0.35))
                    .frame(minHeight: 44)
                    .padding(.vertical, -15)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        withAnimation(.easeOut(duration: 0.15)) { isDisclosurePresented = true }
                    }
                    .accessibilityAddTraits(.isButton)
                    .accessibilityHint("Shows the AI disclosure")

                Circle()
                    .fill(Color.lpCream.opacity(0.4))
                    .frame(width: 3, height: 3)

                Text("Photo Credits")
                    .font(.geist(11, weight: .medium))
                    .foregroundColor(.lpCream)
                    .underline(true, color: Color.lpCream.opacity(0.35))
                    .frame(minHeight: 44)
                    .padding(.vertical, -15)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        withAnimation(.easeOut(duration: 0.15)) { isCreditsPresented = true }
                    }
                    .accessibilityAddTraits(.isButton)
                    .accessibilityHint("Shows the catalog photo credits")

                Circle()
                    .fill(Color.lpCream.opacity(0.4))
                    .frame(width: 3, height: 3)

                Text("© 2026")
                    .font(.geistMono(11))
                    .kerning(1.2)
                    .foregroundColor(Color.lpCream.opacity(0.82))
            }
            .padding(.top, 8) // + VStack spacing 6 = reference gap of 14
        }
    }
}

// MARK: - Live identify overlays

// Full-screen wait state while Claude writes a profile for a searched name.
// Mirrors the camera's identifying phase: snout pulse, announcement, and a
// way out — generation can take a minute.
private struct IdentifyingOverlay: View {
    let name: String
    let onCancel: () -> Void
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var pulse = false

    var body: some View {
        ZStack {
            Color.lpNavy.opacity(0.72).ignoresSafeArea()

            VStack(spacing: 6) {
                SnoutView(size: 84)
                    .opacity(reduceMotion ? 1 : (pulse ? 0.35 : 1))
                    .animation(reduceMotion ? nil : .easeInOut(duration: 0.7).repeatForever(autoreverses: true),
                               value: pulse)
                    .accessibilityHidden(true)

                Text("Rooting up \u{201C}\(name)\u{201D}")
                    .font(.geist(17, weight: .semibold))
                    .foregroundColor(.lpCream)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)

                Text("Claude is writing a full profile — this can take a minute.")
                    .font(.geist(13))
                    .foregroundColor(Color.lpCream.opacity(0.75))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)

                Button(action: onCancel) {
                    // Compact pill; the surrounding frame keeps the 44pt
                    // hit target accessibility actually requires.
                    Text("Cancel")
                        .font(.geist(13, weight: .semibold))
                        .foregroundColor(Color.lpCream.opacity(0.85))
                        .padding(.horizontal, 14)
                        .padding(.vertical, 7)
                        .overlay(Capsule().strokeBorder(Color.lpCream.opacity(0.35), lineWidth: 1))
                        .frame(minWidth: LP.minTap, minHeight: LP.minTap)
                        .contentShape(Rectangle())
                }
                .padding(.top, 8)
            }
            .padding(24)
            .background(Color.lpPurple)
            .overlay(
                RoundedRectangle(cornerRadius: LP.radius)
                    .strokeBorder(Color.white.opacity(0.14), lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: LP.radius))
            .shadow(color: .black.opacity(0.4), radius: 24, x: 0, y: 12)
            .padding(.horizontal, 40)
        }
        .transition(.opacity)
        .onAppear { pulse = true }
        .accessibilityAddTraits(.isModal)
        .accessibilityAction(.escape, onCancel)
    }
}

private struct IdentifyErrorOverlay: View {
    let message: String
    let onDismiss: () -> Void

    var body: some View {
        ZStack {
            Color.lpNavy.opacity(0.72).ignoresSafeArea()
                .onTapGesture(perform: onDismiss)

            VStack(spacing: 12) {
                Text("Oinks — that didn't work")
                    .font(.geist(18, weight: .bold))
                    .foregroundColor(.lpCream)
                    .accessibilityAddTraits(.isHeader)

                Text(message)
                    .font(.geist(14))
                    .foregroundColor(Color.lpCream.opacity(0.85))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)

                GoldPillButton("OK", action: onDismiss)
                    .padding(.top, 6)
            }
            .padding(24)
            .background(Color.lpPurple)
            .overlay(
                RoundedRectangle(cornerRadius: LP.radius)
                    .strokeBorder(Color.white.opacity(0.14), lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: LP.radius))
            .shadow(color: .black.opacity(0.4), radius: 24, x: 0, y: 12)
            .padding(.horizontal, 40)
        }
        .transition(.opacity.combined(with: .scale(scale: 0.96)))
        .accessibilityAddTraits(.isModal)
        .accessibilityAction(.escape, onDismiss)
    }
}

// MARK: - AI Disclosure Popover

private struct AIDisclosureOverlay: View {
    let onDismiss: () -> Void

    var body: some View {
        ZStack {
            Color.black.opacity(0.55)
                .ignoresSafeArea()
                .onTapGesture(perform: onDismiss)

            VStack(alignment: .leading, spacing: 14) {
                HStack {
                    Text("AI Disclosure")
                        .font(.geist(18, weight: .bold))
                        .foregroundColor(.lpCream)
                        .accessibilityAddTraits(.isHeader)

                    Spacer()

                    Button(action: onDismiss) {
                        Image(systemName: "xmark")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.lpCream)
                            .frame(width: 28, height: 28)
                            .background(Color.white.opacity(0.08))
                            .overlay(Circle().strokeBorder(Color.white.opacity(0.16), lineWidth: 1))
                            .clipShape(Circle())
                    }
                    .frame(width: LP.minTap, height: LP.minTap)
                    .contentShape(Rectangle())
                    .accessibilityLabel("Close")
                }

                VStack(alignment: .leading, spacing: 12) {
                    Text("This app's look was designed with Claude Design, and it was built and its content written with Claude, Anthropic's AI assistant, via Claude Code. Claude wrote most of the app's content — recipes, flavor descriptions, and fruit info. The mascot and home screen hero image were created with ChatGPT. Catalog photography comes from Wikimedia Commons contributors — see Photo Credits.")

                    Text("Lemon Pig also uses Claude live, in the app, to identify fruit from photos you take and generate related content on the fly. Don't rely on this alone to judge whether a fruit is safe to eat.")

                    Text("Claude Code was also used to audit and improve the app's accessibility, including VoiceOver support, text scaling, and tap target sizing.")

                    Text("I directed the concept, design, and feature set, and reviewed the app's design and code before shipping. Recipe details have not been independently fact-checked — please double-check ingredient amounts, substitutions, and allergen info before cooking.")

                    Text("I'm responsible for what's in this app, AI-assisted or not.")
                }
                .font(.geist(14))
                .foregroundColor(Color.lpCream.opacity(0.85))
                .fixedSize(horizontal: false, vertical: true)
            }
            .padding(20)
            .background(Color.lpPurple)
            .overlay(
                RoundedRectangle(cornerRadius: LP.radius)
                    .strokeBorder(Color.white.opacity(0.14), lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: LP.radius))
            .shadow(color: .black.opacity(0.4), radius: 24, x: 0, y: 12)
            .padding(.horizontal, 30)
        }
        .transition(.opacity.combined(with: .scale(scale: 0.96)))
        .accessibilityAddTraits(.isModal)
        .accessibilityAction(.escape, onDismiss)
    }
}

// MARK: - Photo Credits Popover

private struct PhotoCreditsOverlay: View {
    let onDismiss: () -> Void

    var body: some View {
        ZStack {
            Color.black.opacity(0.55)
                .ignoresSafeArea()
                .onTapGesture(perform: onDismiss)

            VStack(alignment: .leading, spacing: 14) {
                HStack {
                    Text("Photo Credits")
                        .font(.geist(18, weight: .bold))
                        .foregroundColor(.lpCream)
                        .accessibilityAddTraits(.isHeader)

                    Spacer()

                    Button(action: onDismiss) {
                        Image(systemName: "xmark")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.lpCream)
                            .frame(width: 28, height: 28)
                            .background(Color.white.opacity(0.08))
                            .overlay(Circle().strokeBorder(Color.white.opacity(0.16), lineWidth: 1))
                            .clipShape(Circle())
                    }
                    .frame(width: LP.minTap, height: LP.minTap)
                    .contentShape(Rectangle())
                    .accessibilityLabel("Close")
                }

                Text("Catalog photography comes from Wikimedia Commons contributors and other public-domain archives, used under Creative Commons and public-domain licenses. Tap any entry to view the original.")
                    .font(.geist(13))
                    .foregroundColor(Color.lpCream.opacity(0.85))
                    .fixedSize(horizontal: false, vertical: true)

                ScrollView(.vertical, showsIndicators: true) {
                    VStack(alignment: .leading, spacing: 0) {
                        ForEach(photoCredits) { credit in
                            if let url = URL(string: credit.sourceURL) {
                                Link(destination: url) {
                                    creditRow(credit)
                                }
                                .accessibilityHint("Opens the original photo on Wikimedia Commons")
                            } else {
                                creditRow(credit)
                            }
                            Divider().background(Color.white.opacity(0.08))
                        }
                    }
                }
            }
            .padding(20)
            .frame(maxHeight: 520)
            .background(Color.lpPurple)
            .overlay(
                RoundedRectangle(cornerRadius: LP.radius)
                    .strokeBorder(Color.white.opacity(0.14), lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: LP.radius))
            .shadow(color: .black.opacity(0.4), radius: 24, x: 0, y: 12)
            .padding(.horizontal, 30)
        }
        .transition(.opacity.combined(with: .scale(scale: 0.96)))
        .accessibilityAddTraits(.isModal)
        .accessibilityAction(.escape, onDismiss)
    }

    private func creditRow(_ credit: PhotoCredit) -> some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(credit.label)
                .font(.geist(13, weight: .medium))
                .foregroundColor(.lpCream)
            Text("\(credit.author) · \(credit.license)")
                .font(.geistMono(11))
                .foregroundColor(Color.lpCream.opacity(0.65))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 8)
        .contentShape(Rectangle())
        .accessibilityElement(children: .combine)
    }
}

// Helper
extension View {
    func flexibleFrame() -> some View {
        self.fixedSize()
    }
}
