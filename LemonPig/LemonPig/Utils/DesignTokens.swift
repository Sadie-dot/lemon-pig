import SwiftUI

// MARK: - Colors
extension Color {
    static let lpPurple    = Color(hex: "#311378")
    static let lpGold      = Color(hex: "#FDD000")
    static let lpCream     = Color(hex: "#FFFDF4")
    static let lpBody      = Color(hex: "#E7E2D4")
    static let lpNavy      = Color(hex: "#03022A")
    static let lpInk       = Color(hex: "#0A0408")

    // Flavor accents
    static let lpSweet     = Color(hex: "#FF8FB1")
    static let lpSweetSour = Color(hex: "#FF6F3C")
    static let lpSweetSourText = Color(hex: "#FF9166")
    static let lpTart      = Color(hex: "#9BE04B")
    static let lpTropical  = Color(hex: "#FFC23C")
    static let lpCreamy    = Color(hex: "#F4E1B0")
    static let lpCitrusy   = Color(hex: "#FFD400")

    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255
        let g = Double((int >> 8) & 0xFF) / 255
        let b = Double(int & 0xFF) / 255
        self.init(red: r, green: g, blue: b)
    }
}

// MARK: - Typography
extension Font {
    static func geist(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        .custom(geistName(weight), size: size, relativeTo: .body)
    }
    static func geistOblique(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        oblique(geistName(weight), size: size)
    }
    static func geistMonoOblique(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        oblique(geistMonoName(weight), size: size)
    }
    static func geistMono(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        .custom(geistMonoName(weight), size: size, relativeTo: .body)
    }
    static func pacifico(_ size: CGFloat) -> Font {
        .custom("Pacifico-Regular", size: size, relativeTo: .body)
    }
}

// UIFont/matrix-based, so it can't use Font.custom(relativeTo:) — scale the
// point size manually via UIFontMetrics so it still respects Dynamic Type.
private func oblique(_ name: String, size: CGFloat) -> Font {
    let scaledSize = UIFontMetrics.default.scaledValue(for: size)
    guard let base = UIFont(name: name, size: scaledSize) else { return .custom(name, size: scaledSize) }
    let shear = CGFloat(tanf(Float(12 * Float.pi / 180)))
    let matrix = CGAffineTransform(a: 1, b: 0, c: shear, d: 1, tx: 0, ty: 0)
    return Font(UIFont(descriptor: base.fontDescriptor.withMatrix(matrix), size: scaledSize))
}

private func geistName(_ weight: Font.Weight) -> String {
    switch weight {
    case .thin:       return "Geist-Thin"
    case .ultraLight: return "Geist-ExtraLight"
    case .light:      return "Geist-Light"
    case .medium:     return "Geist-Medium"
    case .semibold:   return "Geist-SemiBold"
    case .bold:       return "Geist-Bold"
    case .heavy:      return "Geist-ExtraBold"
    case .black:      return "Geist-Black"
    default:          return "Geist-Regular"
    }
}

private func geistMonoName(_ weight: Font.Weight) -> String {
    switch weight {
    case .thin:       return "GeistMono-Thin"
    case .ultraLight: return "GeistMono-ExtraLight"
    case .light:      return "GeistMono-Light"
    case .medium:     return "GeistMono-Medium"
    case .semibold:   return "GeistMono-SemiBold"
    case .bold:       return "GeistMono-Bold"
    case .heavy:      return "GeistMono-ExtraBold"
    case .black:      return "GeistMono-Black"
    default:          return "GeistMono-Regular"
    }
}

// MARK: - Spacing
enum LP {
    static let hPad: CGFloat  = 22
    static let radius: CGFloat = 16
    static let pillRadius: CGFloat = 999
    static let minTap: CGFloat = 44
    static let divider = Color.lpCream.opacity(0.10)
}

// MARK: - Gold Leaf Glyph
struct LeafShape: Shape {
    func path(in rect: CGRect) -> Path {
        // Plump pointed-oval leaf with a center vein — 16×16 viewBox
        let s = min(rect.width, rect.height) / 16
        var p = Path()
        p.move(to:    CGPoint(x: 8*s, y: 1.6*s))
        p.addCurve(to: CGPoint(x: 8*s, y: 14.4*s),
                   control1: CGPoint(x: 12*s, y: 5*s),
                   control2: CGPoint(x: 12*s, y: 11*s))
        p.addCurve(to: CGPoint(x: 8*s, y: 1.6*s),
                   control1: CGPoint(x: 4*s, y: 11*s),
                   control2: CGPoint(x: 4*s, y: 5*s))
        return p
    }
}

struct LeafView: View {
    var size: CGFloat = 15
    var fillColor: Color = .lpGold
    var body: some View {
        ZStack {
            LeafShape()
                .fill(fillColor)
            Path { p in
                let s = size / 16
                p.move(to: CGPoint(x: 8*s, y: 3.4*s))
                p.addLine(to: CGPoint(x: 8*s, y: 12.4*s))
            }
            .stroke(Color.lpPurple.opacity(0.5), lineWidth: size / 16)
        }
        .frame(width: size, height: size)
        .rotationEffect(.degrees(-12))
    }
}

// MARK: - Pig Snout
struct SnoutView: View {
    var size: CGFloat = 172
    var strokeColor: Color = .lpGold
    var body: some View {
        Canvas { ctx, sz in
            let s = sz.width / 44
            // outer ellipse
            let outer = Path(ellipseIn: CGRect(x: (22-20.4)*s, y: (18-15.2)*s,
                                               width: 40.8*s, height: 30.4*s))
            ctx.stroke(outer, with: .color(strokeColor), lineWidth: 2.2*s)
            // left nostril
            let left = Path(ellipseIn: CGRect(x: (15-3.6)*s, y: (18.5-4.6)*s,
                                              width: 7.2*s, height: 9.2*s))
            ctx.stroke(left, with: .color(strokeColor), lineWidth: 2.1*s)
            // right nostril
            let right = Path(ellipseIn: CGRect(x: (29-3.6)*s, y: (18.5-4.6)*s,
                                               width: 7.2*s, height: 9.2*s))
            ctx.stroke(right, with: .color(strokeColor), lineWidth: 2.1*s)
        }
        .frame(width: size, height: size * 138/172)
    }
}

// MARK: - Glass Button
struct GlassButton: View {
    var size: CGFloat = 44
    var bg: Color = Color.black.opacity(0.32)
    var border: Color = Color.white.opacity(0.22)
    let action: () -> Void
    let label: String
    let content: AnyView

    init(size: CGFloat = 44, bg: Color = Color.black.opacity(0.32),
         border: Color = Color.white.opacity(0.22), label: String,
         action: @escaping () -> Void, @ViewBuilder content: () -> some View) {
        self.size = size; self.bg = bg; self.border = border
        self.label = label; self.action = action
        self.content = AnyView(content())
    }

    var body: some View {
        Button(action: action) {
            content
                .frame(width: size, height: size)
                .background(bg)
                .background(.ultraThinMaterial) // CSS: backdrop-filter: blur(8px)
                .clipShape(Circle())
                .overlay(Circle().strokeBorder(border, lineWidth: 1))
        }
        .accessibilityLabel(label)
    }
}

// MARK: - Gold Pill Button
struct GoldPillButton: View {
    let title: String
    let icon: AnyView?
    let action: () -> Void
    @ScaledMetric(relativeTo: .body) private var pillHeight: CGFloat = 46

    init(_ title: String, action: @escaping () -> Void, @ViewBuilder icon: () -> some View = { EmptyView() }) {
        self.title = title; self.action = action
        let v = icon()
        self.icon = v is EmptyView ? nil : AnyView(v)
    }

    var body: some View {
        Button(action: action) {
            HStack(spacing: 9) {
                if let icon {
                    icon.accessibilityHidden(true)
                }
                Text(title)
                    .font(.geist(13, weight: .bold))
                    .kerning(1)
                    .textCase(.uppercase)
                    .foregroundColor(.lpInk)
            }
            .padding(.horizontal, 22)
            .frame(height: pillHeight)
            .background(Color.lpGold)
            .clipShape(Capsule())
            .shadow(color: .white.opacity(0.4), radius: 0, x: 0, y: 1)
        }
    }
}

// MARK: - Taste Chip Button Style

struct TasteChipStyle: ButtonStyle {
    let dotColor: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .lpNavy : .lpCream)
            .background(configuration.isPressed ? Color.lpGold : Color.white.opacity(0.07))
            .overlay(
                Capsule().strokeBorder(
                    configuration.isPressed ? Color.lpGold : Color.lpCream.opacity(0.16),
                    lineWidth: 1
                )
            )
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.96 : 1) // reference :active
            .environment(\.tasteDotPressed, configuration.isPressed)
            .animation(.easeInOut(duration: 0.12), value: configuration.isPressed)
    }
}

private struct TasteDotPressedKey: EnvironmentKey {
    static let defaultValue = false
}
extension EnvironmentValues {
    var tasteDotPressed: Bool {
        get { self[TasteDotPressedKey.self] }
        set { self[TasteDotPressedKey.self] = newValue }
    }
}

// MARK: - Section Kicker
struct SectionKicker: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.geistMono(12, weight: .medium))
            .kerning(2)
            .textCase(.uppercase)
            .foregroundColor(.lpGold)
            .accessibilityAddTraits(.isHeader)
    }
}

// MARK: - Hairline Divider
struct HairlineDivider: View {
    var color: Color = LP.divider
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: 1)
    }
}

// MARK: - Flavor Dot
struct FlavorDot: View {
    let color: Color
    var size: CGFloat = 8
    var ringOpacity: Double = 0.3
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: size, height: size)
            .overlay(
                Circle()
                    .strokeBorder(Color.white.opacity(ringOpacity), lineWidth: 2)
            )
    }
}
