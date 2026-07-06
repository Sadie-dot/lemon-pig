import SwiftUI

struct SignOff: View {
    let newSearchAction: () -> Void
    var body: some View {
        VStack(spacing: 12) {
            if let img = UIImage(named: "mascot-line-cut") {
                Image(uiImage: img)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 78, height: 78)
            } else {
                SnoutView(size: 78)
            }
            Text("Oh, fruit!")
                .font(.geist(15, weight: .medium))
                .foregroundColor(Color.lpCream.opacity(0.78))
            GoldPillButton("New Search", action: newSearchAction) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 13, weight: .semibold))
                    .foregroundColor(.lpInk)
            }
        }
    }
}
