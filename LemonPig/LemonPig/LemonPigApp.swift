import SwiftUI

@main
struct LemonPigApp: App {
    @StateObject private var router = AppRouter()

    init() {
        UIScrollView.appearance().bounces = false
        UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
        }
    }
}
