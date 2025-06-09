//
//  Router.swift
//  NavigationApp
//

import Foundation

protocol Navigating {
    associatedtype Destination: Hashable
    
    func navigate(to destination: Destination)
    func reset()
}

class Router<Route: Hashable>: ObservableObject, Navigating {
    @Published var path: [Route] = []

    func navigate(to destination: Route) {
        path.append(destination)
    }

    func pop() {
        _ = path.popLast()
    }

    func reset() {
        path = []
    }
}

protocol FlowNavigating: Navigating where Destination: Hashable {
    var isFlowComplete: Bool { get set }
}

final class FlowRouter<Route: Hashable>: Router<Route>, FlowNavigating {
    @Published var isFlowComplete: Bool = false
}
