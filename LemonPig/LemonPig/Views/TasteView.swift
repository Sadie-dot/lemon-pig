import SwiftUI

struct TasteView: View {
    let initialFlavor: FlavorKey?
    @EnvironmentObject var router: AppRouter
    @Environment(\.accessibilityReduceMotion) var reduceMotion

    @State private var activeIndex: Int = 0
    @ScaledMetric(relativeTo: .body) private var titleHeight: CGFloat = 34

    private var activeFlavor: Flavor { allFlavors[activeIndex] }
    private var accent: Color { activeFlavor.accent }

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
          VStack(spacing: 0) {
                // Header
                VStack(alignment: .leading, spacing: 0) {
                    Button { router.pop() } label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(width: 44, height: 44)
                            .background(Color.white.opacity(0.08))
                            .overlay(Circle().strokeBorder(Color.lpCream.opacity(0.2), lineWidth: 1))
                            .clipShape(Circle())
                    }
                    .accessibilityLabel("Back")
                    .padding(.bottom, 16)

                    HStack(alignment: .firstTextBaseline, spacing: 12) {
                        Text(activeFlavor.key)
                            .font(.geist(34, weight: .bold))
                            .tracking(-1)
                            .foregroundColor(.lpCream)
                            .accessibilityAddTraits(.isHeader)
                        Text(activeFlavor.tag)
                            .font(.geistOblique(13.5, weight: .semibold))
                            .tracking(-0.1)
                            .foregroundColor(Color.lpCream.opacity(0.9))
                    }
                    .frame(height: titleHeight) // reference line-height: 1 (exactly the 34pt font size)
                    .padding(.top, 4)
                    .animation(.none, value: activeIndex)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, LP.hPad)
                .padding(.top, 8) // reference: 8pt below the status area (58 − 50 mock)
                .padding(.bottom, 6)

                // Flavor switcher
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 9) {
                        ForEach(allFlavors.indices, id: \.self) { i in
                            let f = allFlavors[i]
                            let on = i == activeIndex
                            Button {
                                withAnimation(reduceMotion ? nil : .easeInOut(duration: 0.3)) {
                                    activeIndex = i
                                }
                            } label: {
                                HStack(spacing: 8) {
                                    Circle()
                                        .fill(on ? Color.lpInk.opacity(0.55) : f.accent)
                                        .frame(width: 8, height: 8)
                                        .overlay {
                                            if !on {
                                                Circle().strokeBorder(Color.white.opacity(0.08), lineWidth: 2)
                                            }
                                        }
                                    Text(f.key)
                                        .font(.geist(13, weight: on ? .bold : .medium))
                                        .foregroundColor(on ? .lpInk : .lpCream)
                                        .lineLimit(1)
                                }
                                .padding(.horizontal, 15)
                                .frame(minHeight: LP.minTap)
                                .background(on ? f.accent : Color.white.opacity(0.07))
                                .overlay(Capsule().strokeBorder(on ? f.accent : Color.lpCream.opacity(0.16), lineWidth: 1))
                                .clipShape(Capsule())
                            }
                            .accessibilityLabel("\(f.key) fruits")
                            .accessibilityAddTraits(on ? .isSelected : [])
                        }
                    }
                    .padding(.horizontal, LP.hPad)
                    .padding(.top, 14)
                    .padding(.bottom, 16)
                }
                .mask(
                    LinearGradient(
                        stops: [.init(color: .black, location: 0), .init(color: .black, location: 0.88), .init(color: .clear, location: 1)],
                        startPoint: .leading, endPoint: .trailing
                    )
                )
                // Reference: role=tablist aria-label="Filter by flavor"
                .accessibilityElement(children: .contain)
                .accessibilityLabel("Filter by flavor")

                // Fruit list
                LazyVStack(spacing: 0) {
                    ForEach(activeFlavor.fruits.indices, id: \.self) { i in
                        let fr = activeFlavor.fruits[i]
                        FruitRow(fruit: fr, accent: accent, index: i) {
                            if let dest = fr.fruit {
                                router.push(.result(dest))
                            }
                        }
                    }
                }
                .padding(.top, 2)
                .padding(.horizontal, 14)
                .padding(.bottom, 28)
                .id(activeIndex)
          }
        }
        .ignoresSafeArea(edges: .bottom)
        .background {
            ZStack(alignment: .top) {
                Color.lpPurple.ignoresSafeArea()
                VStack(spacing: 0) {
                    LinearGradient(
                        stops: [
                            .init(color: accent.opacity(0.36), location: 0),
                            .init(color: accent.opacity(0.19), location: 0.26),
                            .init(color: accent.opacity(0.07), location: 0.52),
                            .init(color: Color.lpPurple.opacity(0), location: 0.78)
                        ],
                        startPoint: .top, endPoint: .bottom
                    )
                    .frame(height: 360)
                    .animation(reduceMotion ? nil : .easeInOut(duration: 0.42), value: activeIndex)
                    Spacer()
                }
                .ignoresSafeArea()
                Ellipse()
                    .fill(RadialGradient(colors: [accent.opacity(0.25), .clear],
                                        center: .center, startRadius: 0, endRadius: 180))
                    .frame(width: 360, height: 220)
                    .blur(radius: 8)
                    .offset(y: -40)
                    .animation(reduceMotion ? nil : .easeInOut(duration: 0.42), value: activeIndex)
            }
        }
        .navigationBarHidden(true)
        .onAppear {
            if let key = initialFlavor,
               let idx = allFlavors.firstIndex(where: { $0.key == key }) {
                activeIndex = idx
            }
        }
    }
}

// MARK: - Fruit Row

private struct FruitRow: View {
    let fruit: FlavorFruit
    let accent: Color
    let index: Int
    let action: () -> Void

    @State private var appeared = false
    @Environment(\.accessibilityReduceMotion) var reduceMotion

    var body: some View {
        // "Comfy" density — the reference's shipped default (thumb 70, pad 15)
        Button(action: action) {
            HStack(spacing: 16) {
                // Thumbnail
                ZStack {
                    // Gradient sheen belongs to the tile background; the photo
                    // paints over it (reference: image-slot child covers the div)
                    fruit.tileColor
                    LinearGradient(
                        colors: [Color.white.opacity(0.32), Color.black.opacity(0.34)],
                        startPoint: UnitPoint(x: 0.2, y: 0), endPoint: UnitPoint(x: 0.8, y: 1)
                    )
                    if let imgName = fruit.imageName, let img = UIImage(named: imgName) {
                        Image(uiImage: img)
                            .resizable()
                            .scaledToFill()
                    }
                }
                .frame(width: 70, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay(RoundedRectangle(cornerRadius: 16).strokeBorder(Color.white.opacity(0.12), lineWidth: 1))
                // CSS: 0 8px 18px -10px rgba(0,0,0,0.6) — the -10 spread shrinks
                // the shadow caster; emulate with an inset shape behind the tile
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .fill(.black)
                        .padding(10)
                        .shadow(color: .black.opacity(0.6), radius: 9, x: 0, y: 8)
                )
                .accessibilityHidden(true)

                HStack(spacing: 12) {
                    VStack(alignment: .leading, spacing: 3) {
                        Text(fruit.name)
                            .font(.geist(17.5, weight: .semibold))
                            .tracking(-0.3)
                            .foregroundColor(.lpCream)
                        Text(fruit.desc)
                            .font(.geist(14))
                            .tracking(-0.1)
                            .foregroundColor(Color.lpCream.opacity(0.62))
                            .lineLimit(2)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)

                    if let benefit = fruit.benefit {
                        HStack(spacing: 5) {
                            LeafView(size: 15, fillColor: accent)
                            Text(benefit.uppercased())
                                .font(.geistMono(11))
                                .kerning(0.6)
                                .foregroundColor(Color.lpCream.opacity(0.78))
                        }
                        .fixedSize()
                    }

                    Image(systemName: "chevron.right")
                        .font(.system(size: 12))
                        .foregroundColor(Color.lpCream.opacity(0.5))
                        .padding(.leading, 4)
                }
            }
        }
        .buttonStyle(.plain)
        .accessibilityLabel("\(fruit.name). \(fruit.desc).\(fruit.benefit.map { " Rich in \($0)." } ?? "")")
        .padding(.horizontal, 8)
        .padding(.vertical, 15)
        .offset(y: appeared || reduceMotion ? 0 : 10)
        .animation(
            reduceMotion ? nil : .easeOut(duration: 0.38).delay(Double(index) * 0.045),
            value: appeared
        )
        .onAppear { appeared = true }
    }
}
