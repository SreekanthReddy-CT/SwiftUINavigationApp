//
//  MoreRoute.swift
//  NavigationApp
//

import SwiftUI

typealias MoreRouter = Router<MoreRoute>

enum MoreRoute: Hashable {
    case home
    case profile
}

extension MoreRoute {
    @MainActor @ViewBuilder
    func destinationView() -> some View {
        switch self {
        case .home:
            EmptyView()
        case .profile:
            ProfileViewBuilder.build()
        }
    }
}

struct MoreFlow: View {
    @ObservedObject var router: MoreRouter
    
    var body: some View {
        NavigationStack(path: $router.path) {
            MoreViewBuilder.build(router: router)
                .environmentObject(router)
                .navigationDestination(for: MoreRoute.self) { route in
                    route.destinationView()
                }
        }
    }
}

#Preview {
    MoreFlow(router: MoreRouter())
}

