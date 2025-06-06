//
//  AppRouter.swift
//  NavigationApp
//

import SwiftUI

enum AppRoute {
    case splash
    case onboarding
    case dashboard
}

@MainActor
final class AppRouter: ObservableObject {
    @Published var route: AppRoute = .splash
    
    func moveToOnboarding() {
        route = .onboarding
    }
    
    func moveToDashboard() {
        route = .dashboard
    }
}
