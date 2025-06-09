//
//  AppRoute.swift
//  NavigationApp
//

import SwiftUI

enum AppRoute {
    case splash
    case onboarding
    case dashboard
}

extension AppRoute {
    @MainActor @ViewBuilder
    func destinationView() -> some View {
        switch self {
        case .splash:
            SplashScreen()
        case .onboarding:
            OnboardingFlow(router: OnboardingRouter(), wasPresentedModally: false)
        case .dashboard:
            DashboardTabViewBuilder.build()
        }
    }
}
