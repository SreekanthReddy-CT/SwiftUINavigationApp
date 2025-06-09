//
//  OnboardingRoute.swift
//  NavigationApp
//

import SwiftUI

typealias OnboardingRouter = FlowRouter<OnboardingRoute>

enum OnboardingRoute: Hashable {
    case start
    case end
    
    @MainActor @ViewBuilder
    func destinationView(router: OnboardingRouter) -> some View {
        switch self {
        case .start:
            EmptyView()
        case .end:
            OnboardingEndViewBuilder.build(router: router)
        }
    }
}
