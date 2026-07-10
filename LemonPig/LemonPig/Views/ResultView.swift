import SwiftUI

struct ResultView: View {
    let fruit: Fruit
    @EnvironmentObject var router: AppRouter

    var body: some View {
        ZStack(alignment: .bottom) {
            Color.lpPurple.ignoresSafeArea()

            // Scrollable content
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    ResultHero(fruit: fruit)

                    // Flavor chips (only those with a dot color)
                    if !fruit.flavors.isEmpty {
                        FlavorChipsRow(tags: fruit.flavors, router: router)
                            .padding(.top, 18)
                            .padding(.bottom, 4)
                    }

                    // Pull quote
                    PullQuote(text: fruit.pullQuote, highlight: fruit.pullQuoteHighlight)
                        .padding(.horizontal, 20)
                        .padding(.top, 14)
                        .padding(.bottom, 6)

                    // Content sections
                    VStack(spacing: 0) {
                        // Snapshot
                        SectionBlock(title: "Snapshot", iconKey: "info", isFirst: true) {
                            BodyText(fruit.snapshot)
                        }

                        // Reasons to love
                        SectionBlock(title: "Reasons to love", iconKey: "heart") {
                            VStack(alignment: .leading, spacing: 0) {
                                BodyText(fruit.loveBody)
                                VStack(alignment: .leading, spacing: 8) {
                                    ForEach(fruit.loveBullets, id: \.self) { note in
                                        HStack(alignment: .top, spacing: 11) {
                                            Circle()
                                                .fill(Color.lpGold)
                                                .frame(width: 5, height: 5)
                                                .padding(.top, 8)
                                            Text(note)
                                                .font(.geist(14, weight: .medium))
                                                .foregroundColor(.lpCream)
                                                .lineSpacing(3) // lh 1.5 × 14 = 21pt pitch
                                                .tracking(-0.1)
                                                .fixedSize(horizontal: false, vertical: true)
                                        }
                                    }
                                }
                                .padding(.top, 14)
                            }
                        }

                        // How to enjoy
                        SectionBlock(title: "How to enjoy", iconKey: "fork") {
                            VStack(alignment: .leading, spacing: 11) {
                                ForEach([
                                    ("Eat",      fruit.howToEnjoy.eat),
                                    ("Look for", fruit.howToEnjoy.lookFor),
                                    ("Store",    fruit.howToEnjoy.store)
                                ], id: \.0) { item in
                                    HStack(alignment: .top, spacing: 11) {
                                        Circle()
                                            .fill(Color.lpGold)
                                            .frame(width: 5, height: 5)
                                            .padding(.top, 9)
                                        (Text(item.0).fontWeight(.semibold).foregroundColor(.lpCream)
                                         + Text("  \u{2014}  ").foregroundColor(Color.lpCream.opacity(0.4))
                                         + Text(item.1))
                                            .font(.geist(15))
                                            .foregroundColor(.lpBody)
                                            .lineSpacing(4)
                                            .tracking(-0.1)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }
                                }
                            }
                        }

                        // Recipes
                        SectionBlock(title: "Recipes", iconKey: "pot", isLast: true) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                // Top-aligned so cards with wrapped titles don't
                                // push their neighbors' images out of line.
                                HStack(alignment: .top, spacing: 12) {
                                    ForEach(fruit.recipes, id: \.name) { card in
                                        RecipeCardTile(card: card) {
                                            if let recipe = card.recipe {
                                                router.push(.recipe(recipe))
                                            }
                                        }
                                    }
                                }
                                .padding(.horizontal, 20)
                                .padding(.vertical, 2)
                            }
                            .padding(.horizontal, -20)
                        }
                    }
                    .padding(.horizontal, 20)

                    // Sign-off (mascot + Oh, fruit!)
                    VStack(spacing: 0) {
                        if let img = UIImage(named: "mascot-line-cut") {
                            Image(uiImage: img)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 94, height: 94)
                                .accessibilityHidden(true)
                        }
                        Text("Oh, fruit!")
                            .font(.geist(15, weight: .medium))
                            .tracking(0.2)
                            .foregroundColor(Color.lpCream.opacity(0.78))
                            .padding(.top, -6)
                            .padding(.bottom, 12)
                    }
                    // Reference rhythm: last section pb 20 + container pb 24 + sign-off pt 10
                    .padding(.top, 54)
                    .padding(.bottom, 100)
                }
            }
            .ignoresSafeArea(edges: .top)

            // Sticky bottom bar
            VStack(spacing: 0) {
                HairlineDivider()
                HStack {
                    Spacer()
                    GoldPillButton("New Search") { router.popToRoot() } icon: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.lpInk)
                    }
                    Spacer()
                }
                .padding(.top, 14)
                .padding(.bottom, 22)
            }
            .background(Color.lpPurple)
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
}

// MARK: - Hero

private struct ResultHero: View {
    let fruit: Fruit
    @ScaledMetric(relativeTo: .body) private var titleHeight: CGFloat = 34
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            GeometryReader { geo in
                if let img = CapturedImageStore.shared.image(named: fruit.imageName) ?? UIImage(named: fruit.imageName) {
                    Image(uiImage: img)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.size.width, height: 272)
                        .clipped()
                        .accessibilityHidden(true)
                } else if let skin = fruit.heroSkin, let flesh = fruit.heroFlesh {
                    // Photo-less generated fruit: paint the hero in the
                    // fruit's own colors (the scrims below keep text legible).
                    LinearGradient(colors: [skin, flesh], startPoint: .top, endPoint: .bottom)
                } else {
                    Color.lpNavy
                }
                // Legibility scrim
                LinearGradient(
                    stops: [
                        .init(color: Color.lpNavy.opacity(0.50),   location: 0),
                        .init(color: Color.lpNavy.opacity(0.14),   location: 0.18),
                        .init(color: .clear,                       location: 0.36),
                        .init(color: Color.lpPurple.opacity(0.22), location: 0.58),
                        .init(color: Color.lpPurple.opacity(0.56), location: 0.80),
                        .init(color: Color.lpPurple,               location: 1.00)
                    ],
                    startPoint: .top, endPoint: .bottom
                )
                // Second bottom-up dissolve behind the title block
                VStack(spacing: 0) {
                    Spacer(minLength: 0)
                    LinearGradient(
                        stops: [
                            .init(color: Color.lpNavy.opacity(0),    location: 0),
                            .init(color: Color.lpNavy.opacity(0.06), location: 0.36),
                            .init(color: Color.lpNavy.opacity(0.28), location: 0.68),
                            .init(color: Color.lpNavy.opacity(0.50), location: 1.00)
                        ],
                        startPoint: .top, endPoint: .bottom
                    )
                    .frame(height: 120)
                }
            }
            .frame(height: 272)

            // Title block
            VStack(alignment: .leading, spacing: 0) {
                // Eyebrow
                HStack(spacing: 6) {
                    LeafView(size: 17)
                    Text(fruit.eyebrow.uppercased())
                        .font(.geistMono(10.5, weight: .medium))
                        .kerning(2)
                        .foregroundColor(.lpGold)
                        .shadow(color: Color.lpNavy.opacity(0.6), radius: 4)
                }
                .padding(.bottom, 8)

                // Fruit name h1
                Text(fruit.name)
                    .font(.geist(34, weight: .bold))
                    .tracking(-1)
                    .foregroundColor(.lpCream)
                    .frame(height: titleHeight) // reference line-height: 1
                    .accessibilityAddTraits(.isHeader)

                // Latin name
                Text(fruit.latinName)
                    .font(.geistMonoOblique(12))
                    .kerning(0.5)
                    .foregroundColor(Color.lpCream.opacity(0.88))
                    .padding(.top, 7)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 18)
        }
        .frame(height: 272)
    }
}

// MARK: - Flavor chips

private struct ResultFlavorDot: View {
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

private struct FlavorChipsRow: View {
    let tags: [FlavorTag]
    let router: AppRouter
    var body: some View {
        // Generated fruits can carry up to six tags — scroll rather than
        // compress (a squeezed HStack wraps the labels mid-word).
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(tags, id: \.label) { tag in
                    Button { router.push(.taste(tag.flavorKey)) } label: {
                        HStack(spacing: 8) {
                            ResultFlavorDot(color: tag.color)
                            Text(tag.label)
                                .font(.geist(13, weight: .medium))
                                .tracking(-0.1)
                                .lineLimit(1)
                                .fixedSize()
                        }
                        .padding(.horizontal, 15)
                        .frame(minHeight: LP.minTap)
                    }
                    .buttonStyle(TasteChipStyle(dotColor: tag.color))
                    .accessibilityLabel("Browse \(tag.label) fruits")
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

// MARK: - Pull Quote

private struct PullQuote: View {
    let text: String
    let highlight: String

    var body: some View {
        HStack(alignment: .top, spacing: 13) {
            Text("\u{201C}")
                .font(.geist(50, weight: .bold))
                .foregroundColor(.lpGold)
                .frame(width: 28)
                .offset(y: -4)
                .accessibilityHidden(true)

            buildText()
                .font(.geist(24, weight: .medium))
                .tracking(-0.5)
                .foregroundColor(.lpCream)
                .lineSpacing(0) // lh 1.28 × 24 ≈ 30.7 ≈ Geist natural (31.2)
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    private func buildText() -> Text {
        let parts = text.components(separatedBy: highlight)
        guard parts.count == 2 else { return Text(text) }
        return Text(parts[0])
            + Text(highlight).foregroundColor(.lpGold)
    }
}

// MARK: - Section block

private struct SectionBlock<Content: View>: View {
    let title: String
    let iconKey: String
    var isFirst: Bool = false
    var isLast: Bool = false
    let content: () -> Content

    init(title: String, iconKey: String, isFirst: Bool = false, isLast: Bool = false, @ViewBuilder content: @escaping () -> Content) {
        self.title = title; self.iconKey = iconKey; self.isFirst = isFirst; self.isLast = isLast; self.content = content
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            if !isFirst {
                HairlineDivider()
                    .padding(.top, 8)
            }
            HStack(spacing: 10) {
                ResultIcon(key: iconKey)
                Text(title.uppercased())
                    .font(.geistMono(11, weight: .medium))
                    .kerning(2)
                    .foregroundColor(.lpGold)
                    .accessibilityAddTraits(.isHeader)
            }
            .padding(.top, isFirst ? 0 : 8)

            content()
        }
        .padding(.top, isFirst ? 20 : 0)
        .padding(.bottom, isLast ? 0 : 10)
    }
}

private struct ResultIcon: View {
    let key: String
    var body: some View {
        Canvas { ctx, size in
            let s = size.width / 16
            let c = GraphicsContext.Shading.color(.lpGold)
            var style = StrokeStyle(lineWidth: 1.5 * s, lineCap: .round, lineJoin: .round)
            switch key {
            case "info":
                var circle = Path(ellipseIn: CGRect(x: 1.6*s, y: 1.6*s, width: 12.8*s, height: 12.8*s))
                ctx.stroke(circle, with: c, style: style)
                var line = Path(); line.move(to: CGPoint(x: 8*s, y: 7.4*s)); line.addLine(to: CGPoint(x: 8*s, y: 10.8*s))
                ctx.stroke(line, with: c, style: style)
                var dot = Path(ellipseIn: CGRect(x: 7.55*s, y: 4.65*s, width: 0.9*s, height: 0.9*s))
                ctx.fill(dot, with: c)
            case "heart":
                var p = Path(); p.move(to: CGPoint(x: 8*s, y: 13.2*s))
                p.addCurve(to: CGPoint(x: 2*s, y: 5.9*s), control1: CGPoint(x: 3.5*s, y: 10.3*s), control2: CGPoint(x: 2*s, y: 8*s))
                p.addCurve(to: CGPoint(x: 4.9*s, y: 3*s), control1: CGPoint(x: 2*s, y: 4.2*s), control2: CGPoint(x: 3.3*s, y: 3*s))
                p.addCurve(to: CGPoint(x: 8*s, y: 5*s), control1: CGPoint(x: 6*s, y: 3*s), control2: CGPoint(x: 7*s, y: 3.6*s))
                p.addCurve(to: CGPoint(x: 11.1*s, y: 3*s), control1: CGPoint(x: 9*s, y: 3.6*s), control2: CGPoint(x: 10*s, y: 3*s))
                p.addCurve(to: CGPoint(x: 14*s, y: 5.9*s), control1: CGPoint(x: 12.7*s, y: 3*s), control2: CGPoint(x: 14*s, y: 4.2*s))
                p.addCurve(to: CGPoint(x: 8*s, y: 13.2*s), control1: CGPoint(x: 14*s, y: 8*s), control2: CGPoint(x: 11.5*s, y: 10.3*s))
                ctx.stroke(p, with: c, style: style)
            case "fork":
                var p = Path()
                p.move(to: CGPoint(x: 4.6*s, y: 2.4*s)); p.addLine(to: CGPoint(x: 4.6*s, y: 5.6*s))
                p.addCurve(to: CGPoint(x: 5.8*s, y: 6.8*s), control1: CGPoint(x: 4.6*s, y: 6.4*s), control2: CGPoint(x: 5.2*s, y: 6.8*s))
                p.addCurve(to: CGPoint(x: 7*s, y: 5.6*s), control1: CGPoint(x: 6.4*s, y: 6.8*s), control2: CGPoint(x: 7*s, y: 6.4*s))
                p.addLine(to: CGPoint(x: 7*s, y: 2.4*s))
                ctx.stroke(p, with: c, style: style)
                var stem = Path(); stem.move(to: CGPoint(x: 5.8*s, y: 6.8*s)); stem.addLine(to: CGPoint(x: 5.8*s, y: 13.6*s))
                ctx.stroke(stem, with: c, style: style)
                var knife = Path(); knife.move(to: CGPoint(x: 11*s, y: 2.4*s))
                knife.addCurve(to: CGPoint(x: 9.2*s, y: 5.2*s), control1: CGPoint(x: 9.9*s, y: 2.4*s), control2: CGPoint(x: 9.2*s, y: 3.5*s))
                knife.addCurve(to: CGPoint(x: 11*s, y: 7.5*s), control1: CGPoint(x: 9.2*s, y: 6.3*s), control2: CGPoint(x: 10.3*s, y: 7.1*s))
                knife.addLine(to: CGPoint(x: 11*s, y: 13.6*s))
                ctx.stroke(knife, with: c, style: style)
            default: // pot
                var p = Path()
                p.move(to: CGPoint(x: 3*s, y: 7*s))
                p.addLine(to: CGPoint(x: 13*s, y: 7*s))
                p.addLine(to: CGPoint(x: 13*s, y: 10.2*s))
                p.addCurve(to: CGPoint(x: 10.8*s, y: 12.4*s), control1: CGPoint(x: 13*s, y: 11.4*s), control2: CGPoint(x: 12*s, y: 12.4*s))
                p.addLine(to: CGPoint(x: 5.2*s, y: 12.4*s))
                p.addCurve(to: CGPoint(x: 3*s, y: 10.2*s), control1: CGPoint(x: 4*s, y: 12.4*s), control2: CGPoint(x: 3*s, y: 11.4*s))
                p.closeSubpath()
                ctx.stroke(p, with: c, style: style)
                var rim = Path(); rim.move(to: CGPoint(x: 2.2*s, y: 7*s)); rim.addLine(to: CGPoint(x: 13.8*s, y: 7*s))
                ctx.stroke(rim, with: c, style: style)
                var handles = Path()
                handles.move(to: CGPoint(x: 3*s, y: 8.4*s)); handles.addLine(to: CGPoint(x: 1.6*s, y: 8.4*s))
                handles.move(to: CGPoint(x: 13*s, y: 8.4*s)); handles.addLine(to: CGPoint(x: 14.4*s, y: 8.4*s))
                ctx.stroke(handles, with: c, style: style)
                var steam = Path()
                steam.move(to: CGPoint(x: 6.4*s, y: 4.2*s)); steam.addCurve(to: CGPoint(x: 6.4*s, y: 1.8*s), control1: CGPoint(x: 7*s, y: 3.3*s), control2: CGPoint(x: 5.8*s, y: 2.7*s))
                steam.move(to: CGPoint(x: 9.6*s, y: 4.2*s)); steam.addCurve(to: CGPoint(x: 9.6*s, y: 1.8*s), control1: CGPoint(x: 10.2*s, y: 3.3*s), control2: CGPoint(x: 9*s, y: 2.7*s))
                ctx.stroke(steam, with: c, style: style)
            }
        }
        .frame(width: 20, height: 20)
    }
}

private struct BodyText: View {
    let text: String
    init(_ text: String) { self.text = text }
    var body: some View {
        Text(text)
            .font(.geist(15))
            .foregroundColor(.lpBody)
            .lineSpacing(4) // lh 1.55 × 15 ≈ 23.25pt pitch (Geist natural 19.5)
            .tracking(-0.1)
            .fixedSize(horizontal: false, vertical: true)
    }
}

// MARK: - Recipe card tile

private struct RecipeCardTile: View {
    let card: RecipeCard
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 0) {
                Group {
                    if let img = CapturedImageStore.shared.image(named: card.imageName) ?? UIImage(named: card.imageName) {
                        Image(uiImage: img)
                            .resizable()
                            .scaledToFill()
                    } else {
                        ZStack {
                            Color(hex: "#2a1066")
                            if let pig = UIImage(named: "pig-icon") {
                                Image(uiImage: pig)
                                    .renderingMode(.template)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 54, height: 54)
                                    // 3.43:1 on the #2a1066 card — WCAG 1.4.11
                                    // needs ≥3:1 for graphical objects.
                                    .foregroundColor(Color.lpCream.opacity(0.40))
                            }
                        }
                    }
                }
                .frame(width: 150, height: 104)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay(RoundedRectangle(cornerRadius: 12).strokeBorder(Color.lpCream.opacity(0.1), lineWidth: 1))

                Text(card.name)
                    .font(.geist(14, weight: .semibold))
                    .tracking(-0.2)
                    .foregroundColor(.lpCream)
                    .lineLimit(2)
                    .padding(.top, 10)

                Text(card.meta.uppercased())
                    .font(.geistMono(10))
                    .kerning(0.8)
                    .foregroundColor(Color.lpGold.opacity(0.85))
                    .padding(.top, 4)
            }
            .frame(width: 150)
        }
        .buttonStyle(.plain)
        .accessibilityLabel("\(card.name), \(card.meta)\(card.recipe == nil ? "" : ", tap to open recipe")")
    }
}
