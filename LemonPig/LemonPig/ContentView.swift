import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: AppRouter

    var body: some View {
        NavigationStack(path: $router.path) {
            HomeView()
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .camera:
                        CameraView()
                    case .result(let fruit):
                        ResultView(fruit: fruit)
                    case .recipe(let recipe):
                        RecipeView(recipe: recipe)
                    case .taste(let flavor):
                        TasteView(initialFlavor: flavor)
                    case .noMatch(let source):
                        NoMatchView(source: source)
                    }
                }
        }
        .navigationBarHidden(true)
    }
}
