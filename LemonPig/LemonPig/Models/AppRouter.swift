import SwiftUI

enum Route: Hashable {
    case camera
    case result(Fruit)
    case recipe(Recipe)
    case taste(FlavorKey?)
    case noMatch
}

@MainActor
final class AppRouter: ObservableObject {
    @Published var path: [Route] = []

    func push(_ route: Route) { path.append(route) }
    func pop()               { path.removeLast() }
    func popToRoot()         { path.removeAll() }
}
