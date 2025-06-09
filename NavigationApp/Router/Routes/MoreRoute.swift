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
