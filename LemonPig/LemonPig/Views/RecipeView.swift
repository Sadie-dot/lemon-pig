import SwiftUI

struct RecipeView: View {
    let recipe: Recipe
    @EnvironmentObject var router: AppRouter

    private let scaleOptions: [(label: String, value: Double)] = [
        ("½×", 0.5), ("1×", 1.0), ("2×", 2.0), ("3×", 3.0)
    ]
    @State private var scaleIndex = 1

    private var batch: Double { scaleOptions[scaleIndex].value }
    private var yieldVal: Double { recipe.baseYieldValue * batch }
    private var servings: Int { Int(round(Double(recipe.baseServings) * batch)) }

    var body: some View {
        ZStack {
            Color.lpPurple.ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    // Hero
                    RecipeHero(recipe: recipe) { router.pop() }

                    // Meta row
                    MetaRow(time: recipe.time, level: recipe.level, cal: recipe.cal)
                        .padding(.horizontal, 20)
                        .padding(.top, 16)

                    // Lede
                    // Geist natural line height is 1.3× size; spacing = target pitch − that
                    Text(recipe.lede)
                        .font(.geistOblique(16))
                        .foregroundColor(Color.lpCream.opacity(0.9))
                        .lineSpacing(3) // lh 1.5 × 16 = 24pt pitch
                        .tracking(-0.2)
                        .padding(.horizontal, 22)
                        .padding(.top, 18)
                        .fixedSize(horizontal: false, vertical: true)

                    // Ingredients
                    IngredientsSection(
                        recipe: recipe,
                        batch: batch,
                        scaleOptions: scaleOptions,
                        scaleIndex: $scaleIndex,
                        yieldVal: yieldVal,
                        servings: servings
                    )
                    .padding(.horizontal, 20)
                    .padding(.top, 28)

                    // Method
                    MethodSection(steps: recipe.steps)
                        .padding(.horizontal, 20)
                        .padding(.top, 28)

                    // Tips
                    TipsSection(tips: recipe.tips, accent: recipe.accentColor)
                        .padding(.horizontal, 20)
                        .padding(.top, 28)

                    // Sign-off
                    VStack(spacing: 0) {
                        if let img = UIImage(named: "mascot-line-cut") {
                            Image(uiImage: img)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 78, height: 78)
                                .accessibilityHidden(true)
                        }
                        Text("Oh, fruit!")
                            .font(.geist(15, weight: .medium))
                            .tracking(0.2)
                            .foregroundColor(Color.lpCream.opacity(0.78))
                            .padding(.top, -4)
                        GoldPillButton("New Search", action: { router.popToRoot() }) {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.lpInk)
                        }
                        .padding(.top, 18)
                    }
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                }
            }
            // Reference sign-off ends 30pt above the physical bottom (canvas
            // includes the home-indicator zone), so extend under it too.
            .ignoresSafeArea(.all, edges: [.top, .bottom])
        }
        .navigationBarHidden(true)
    }
}

// MARK: - Hero

private struct RecipeHero: View {
    let recipe: Recipe
    let onBack: () -> Void
    @ScaledMetric(relativeTo: .body) private var titleHeight: CGFloat = 34
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            GeometryReader { geo in
                if let img = CapturedImageStore.shared.image(named: recipe.imageName) ?? UIImage(named: recipe.imageName) {
                    // Tight crop per reference: background-size 165%, position 60% 42%
                    Image(uiImage: img)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.size.width, height: 300)
                        .scaleEffect(1.65, anchor: UnitPoint(x: 0.6, y: 0.42))
                        .clipped()
                        .accessibilityHidden(true)
                } else {
                    Color.lpNavy
                }
                LinearGradient(
                    stops: [
                        .init(color: Color.lpNavy.opacity(0.50),   location: 0),
                        .init(color: Color.lpNavy.opacity(0.14),   location: 0.16),
                        .init(color: .clear,                       location: 0.34),
                        .init(color: Color.lpPurple.opacity(0.28), location: 0.58),
                        .init(color: Color.lpPurple.opacity(0.62), location: 0.80),
                        .init(color: Color.lpPurple,               location: 1.00)
                    ],
                    startPoint: .top, endPoint: .bottom
                )

                // Back button
                Button(action: onBack) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(width: 44, height: 44)
                        .background(Color.lpNavy.opacity(0.55))
                        .background(.ultraThinMaterial)
                        .clipShape(Circle())
                        .overlay(Circle().strokeBorder(Color.white.opacity(0.28), lineWidth: 1))
                }
                .accessibilityLabel("Back to \(recipe.name.components(separatedBy: " ").first ?? "result")")
                .position(x: 40, y: 78)
            }
            .frame(height: 300)

            VStack(alignment: .leading, spacing: 9) {
                HStack(spacing: 7) {
                    LeafView(size: 17)
                        .shadow(color: Color.lpNavy.opacity(0.55), radius: 6, x: 0, y: 1)
                    Text(recipe.eyebrow.uppercased())
                        .font(.geistMono(10.5, weight: .medium))
                        .kerning(2)
                        .foregroundColor(.lpGold)
                }
                Text(recipe.name)
                    .font(.geist(33, weight: .bold))
                    .tracking(-1)
                    .foregroundColor(.lpCream)
                    .frame(height: titleHeight) // reference line-height: 1.04 × 33
                    .accessibilityAddTraits(.isHeader)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 24)
        }
        .frame(height: 300)
        .clipped()
        // Faint full-bleed hairline where the hero meets the body
        // (present in the reference capture 04-recipe.png)
        .overlay(alignment: .bottom) {
            HairlineDivider()
        }
    }
}

// MARK: - Meta Row

private struct MetaRow: View {
    let time: String
    let level: String
    let cal: String
    var body: some View {
        HStack(spacing: 0) {
            ForEach([("Time", time), ("Level", level), ("Cal", cal)], id: \.0) { kv in
                if kv.0 != "Time" {
                    Rectangle()
                        .fill(Color.lpCream.opacity(0.1))
                        .frame(width: 1)
                }
                VStack(spacing: 3) {
                    Text(kv.1)
                        .font(.geist(16, weight: .bold))
                        .tracking(-0.3)
                        .foregroundColor(.lpCream)
                    Text(kv.0.uppercased())
                        .font(.geistMono(9.5, weight: .medium))
                        .kerning(1.5)
                        .foregroundColor(Color.lpCream.opacity(0.62))
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 13)
            }
        }
        .background(Color.white.opacity(0.04))
        .overlay(RoundedRectangle(cornerRadius: LP.radius).strokeBorder(Color.lpCream.opacity(0.12), lineWidth: 1))
        .cornerRadius(LP.radius)
    }
}

// MARK: - Ingredients

private struct IngredientsSection: View {
    let recipe: Recipe
    let batch: Double
    let scaleOptions: [(label: String, value: Double)]
    @Binding var scaleIndex: Int
    let yieldVal: Double
    let servings: Int
    @ScaledMetric(relativeTo: .body) private var segmentHeight: CGFloat = 44

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Section header with coral divider
            HairlineDivider(color: Color.lpSweetSour.opacity(0.45))
                .padding(.bottom, 16)

            HStack(spacing: 10) {
                RecipeCupIcon()
                SectionKicker(title: "Ingredients")
            }

            // Resize card
            VStack(spacing: 11) {
                HStack {
                    Text("Resize recipe")
                        .font(.geistMono(10.5, weight: .medium))
                        .kerning(1.6)
                        .textCase(.uppercase)
                        .foregroundColor(Color.lpCream.opacity(0.62))
                    Spacer()
                    (Text("Makes ")
                     + Text("\(fmtQty(yieldVal)) \(yieldVal > 1.0001 ? "cups" : recipe.baseYieldUnit)")
                        .foregroundColor(.lpGold)
                        .fontWeight(.bold)
                     + Text(" · serves ")
                     + Text("\(servings)")
                        .foregroundColor(.lpGold)
                        .fontWeight(.bold))
                        .font(.geist(13))
                        .foregroundColor(Color.lpCream.opacity(0.62))
                }
                .accessibilityElement()
                .accessibilityLabel("Makes \(fmtQty(yieldVal)) \(recipe.baseYieldUnit), serves \(servings)")
                .accessibilityAddTraits(.updatesFrequently)

                // Segmented control
                HStack(spacing: 5) {
                    ForEach(scaleOptions.indices, id: \.self) { i in
                        let on = i == scaleIndex
                        Button {
                            scaleIndex = i
                            UIAccessibility.post(notification: .announcement,
                                argument: "Scaled \(scaleOptions[i].label). Makes \(fmtQty(recipe.baseYieldValue * scaleOptions[i].value)) \(recipe.baseYieldUnit), serves \(Int(round(Double(recipe.baseServings) * scaleOptions[i].value))).")
                        } label: {
                            Text(scaleOptions[i].label)
                                .font(.geistMono(13, weight: on ? .semibold : .medium))
                                .kerning(0.4)
                                .foregroundColor(on ? .lpInk : Color.lpCream.opacity(0.62))
                                .frame(maxWidth: .infinity)
                                .frame(height: segmentHeight)
                                .background(on ? Color.lpGold : Color.clear)
                                .cornerRadius(9)
                                .shadow(color: on ? Color.white.opacity(0.4) : .clear, radius: 0, x: 0, y: 1)
                        }
                        .accessibilityLabel("Scale \(scaleOptions[i].label), serves \(Int(round(Double(recipe.baseServings) * scaleOptions[i].value)))")
                        .accessibilityAddTraits(on ? [.isSelected] : [])
                    }
                }
                .padding(4)
                .background(Color.lpNavy.opacity(0.35))
                .cornerRadius(12)
                .accessibilityElement(children: .contain)
                .accessibilityLabel("Resize recipe")
            }
            .padding(.top, 13)
            .padding([.horizontal, .bottom], 14)
            .background(Color.white.opacity(0.04))
            .overlay(RoundedRectangle(cornerRadius: LP.radius).strokeBorder(Color.lpCream.opacity(0.12), lineWidth: 1))
            .cornerRadius(LP.radius)
            .padding(.top, 13)

            // Ingredient list
            VStack(spacing: 0) {
                ForEach(recipe.ingredients.indices, id: \.self) { i in
                    let ing = recipe.ingredients[i]
                    HStack(alignment: .firstTextBaseline, spacing: 14) {
                        Text(fmtIngredient(ing, batch: batch))
                            .font(.geistMono(14, weight: .medium))
                            .foregroundColor(.lpGold)
                            .frame(minWidth: 62, alignment: .leading)
                        Text(ing.name)
                            .font(.geist(15))
                            .foregroundColor(.lpCream)
                            .tracking(-0.1)
                        Spacer()
                    }
                    .padding(.vertical, 11)
                    .overlay(alignment: .top) {
                        if i > 0 { HairlineDivider(color: Color.lpCream.opacity(0.08)).frame(height: 1) }
                    }
                    .accessibilityElement()
                    .accessibilityLabel("\(fmtIngredient(ing, batch: batch)) \(ing.name)")
                }
            }
            .padding(.top, 18)
        }
    }
}

// MARK: - Method

private struct MethodSection: View {
    let steps: [Step]
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var appeared = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HairlineDivider()
                .padding(.bottom, 16)
            HStack(spacing: 10) {
                RecipeStepsIcon()
                SectionKicker(title: "Method")
            }
            VStack(spacing: 12) {
                ForEach(steps.indices, id: \.self) { i in
                    let step = steps[i]
                    VStack(alignment: .leading, spacing: 9) {
                        Text(step.title)
                            .font(.geist(18, weight: .bold))
                            .tracking(-0.4)
                            .foregroundColor(.lpCream)
                        Text(step.body)
                            .font(.geist(14.5))
                            .foregroundColor(.lpBody)
                            .lineSpacing(3) // lh 1.5 × 14.5 ≈ 21.75pt pitch
                            .tracking(-0.1)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 18)
                    .padding(.leading, 34)
                    .padding(.trailing, 16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    // Ghost numeral sits behind the text, over the card fill.
                    // Clipped inside the border stroke (CSS overflow: hidden cuts
                    // at the border's inner edge), so the digit never runs under
                    // or past the card outline.
                    .background {
                        Color.clear
                            .overlay(alignment: .topTrailing) {
                                Text("\(i + 1)")
                                    .font(.geist(78, weight: .bold))
                                    .foregroundColor(Color.lpGold.opacity(0.12))
                                    .padding(.trailing, 10)
                                    // Digit cap lands 0.7pt above the card edge, per
                                    // the reference's CSS metrics (asc 1005, cap 710)
                                    .offset(y: -24)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 18).inset(by: 1))
                            .accessibilityHidden(true)
                    }
                    .background(Color.white.opacity(0.05))
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                    .overlay(RoundedRectangle(cornerRadius: 18).strokeBorder(Color.lpCream.opacity(0.1), lineWidth: 1))
                    // stepIn: transform-only slide-up, 70ms stagger
                    .offset(y: appeared || reduceMotion ? 0 : 12)
                    .animation(
                        reduceMotion ? nil : .easeOut(duration: 0.42).delay(Double(i) * 0.07),
                        value: appeared
                    )
                }
            }
            .padding(.top, 14)
        }
        .onAppear { appeared = true }
    }
}

// MARK: - Tips

private struct TipsSection: View {
    let tips: [String]
    let accent: Color
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HairlineDivider()
                .padding(.bottom, 16)
            Text("Tips & variations")
                .font(.geistMono(10.5, weight: .medium))
                .kerning(1.8)
                .textCase(.uppercase)
                // Reference uses 0.5, which lands at ~4.36:1 on purple — just
                // under WCAG AA (4.5:1). 0.55 clears it (5.0:1) while staying
                // more muted than the 0.62 meta labels.
                .foregroundColor(Color.lpCream.opacity(0.55))
                .accessibilityAddTraits(.isHeader)

            VStack(alignment: .leading, spacing: 9) {
                ForEach(tips, id: \.self) { tip in
                    HStack(alignment: .top, spacing: 10) {
                        Circle()
                            .fill(accent)
                            .frame(width: 6, height: 6)
                            .padding(.top, 6)
                        Text(tip)
                            .font(.geist(13.5))
                            .tracking(-0.1)
                            .foregroundColor(.lpBody)
                            .lineSpacing(3) // lh 1.5 × 13.5 ≈ 20.25pt pitch
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
            }
            .padding(.top, 12)
        }
    }
}

// MARK: - Recipe Section Icons

private struct RecipeCupIcon: View {
    var body: some View {
        Canvas { ctx, size in
            let s = size.width / 16
            let g = GraphicsContext.Shading.color(.lpGold)
            let st = StrokeStyle(lineWidth: 1.5, lineCap: .round, lineJoin: .round)

            // Top rim
            var rim = Path()
            rim.move(to: CGPoint(x: 3.6*s, y: 5*s))
            rim.addLine(to: CGPoint(x: 12.4*s, y: 5*s))
            ctx.stroke(rim, with: g, style: st)

            // Left spout tick
            var tick = Path()
            tick.move(to: CGPoint(x: 2.7*s, y: 3.9*s))
            tick.addLine(to: CGPoint(x: 3.6*s, y: 5*s))
            tick.addLine(to: CGPoint(x: 2.9*s, y: 5.4*s))
            ctx.stroke(tick, with: g, style: st)

            // Cup body with rounded bottom corners
            var body = Path()
            body.move(to: CGPoint(x: 4.3*s, y: 5*s))
            body.addLine(to: CGPoint(x: 5.1*s, y: 12.1*s))
            body.addArc(tangent1End: CGPoint(x: 5.1*s, y: 13*s),
                        tangent2End: CGPoint(x: 9.9*s, y: 13*s), radius: 1*s)
            body.addLine(to: CGPoint(x: 9.9*s, y: 13*s))
            body.addArc(tangent1End: CGPoint(x: 10.9*s, y: 13*s),
                        tangent2End: CGPoint(x: 11.7*s, y: 5*s), radius: 1*s)
            body.addLine(to: CGPoint(x: 11.7*s, y: 5*s))
            ctx.stroke(body, with: g, style: st)

            // Right handle/spout curve
            var spout = Path()
            spout.move(to: CGPoint(x: 11.7*s, y: 6.4*s))
            spout.addCurve(to: CGPoint(x: 11.7*s, y: 10.3*s),
                           control1: CGPoint(x: 13.6*s, y: 6.7*s),
                           control2: CGPoint(x: 13.6*s, y: 10*s))
            ctx.stroke(spout, with: g, style: st)

            // Mid measurement line
            var mid = Path()
            mid.move(to: CGPoint(x: 5*s, y: 8.8*s))
            mid.addLine(to: CGPoint(x: 11*s, y: 8.8*s))
            ctx.stroke(mid, with: g, style: st)
        }
        .frame(width: 20, height: 20)
    }
}

private struct RecipeStepsIcon: View {
    var body: some View {
        Canvas { ctx, size in
            let s = size.width / 16
            let g = GraphicsContext.Shading.color(.lpGold)
            let st = StrokeStyle(lineWidth: 1.5, lineCap: .round, lineJoin: .round)

            for cy in [4.0, 8.0, 12.0] {
                // Dot
                let dot = Path(ellipseIn: CGRect(x: (3 - 1.2)*s, y: (cy - 1.2)*s, width: 2.4*s, height: 2.4*s))
                ctx.stroke(dot, with: g, style: st)
                // Line
                var line = Path()
                line.move(to: CGPoint(x: 6.2*s, y: cy*s))
                line.addLine(to: CGPoint(x: 13.5*s, y: cy*s))
                ctx.stroke(line, with: g, style: st)
            }
        }
        .frame(width: 20, height: 20)
    }
}
