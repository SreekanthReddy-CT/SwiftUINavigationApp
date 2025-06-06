//
//  Router.swift
//  NavigationApp
//

import Foundation

final class Router<Route: Hashable>: ObservableObject {
    @Published var path: [Route] = []

    func navigate(to route: Route) {
        path.append(route)
    }

    func pop() {
        _ = path.popLast()
    }

    func resetToRoot() {
        path = []
    }
}
