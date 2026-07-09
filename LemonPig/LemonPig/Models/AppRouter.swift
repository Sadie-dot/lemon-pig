import SwiftUI

/// Where a dead-end identification came from, so NoMatchView can offer the
/// right recovery action ("another photo" only makes sense after a photo).
enum NoMatchSource: Hashable {
    case camera
    case search
}

enum Route: Hashable {
    case camera
    case result(Fruit)
    case recipe(Recipe)
    case taste(FlavorKey?)
    case noMatch(NoMatchSource)
}

@MainActor
final class AppRouter: ObservableObject {
    @Published var path: [Route] = []

    func push(_ route: Route) { path.append(route) }
    func pop()               { path.removeLast() }
    func popToRoot()         { path.removeAll() }
}
