//
//  AppBase.swift
//  NavigationApp
//

import SwiftUI

struct AppBase: View {
    @StateObject private var router = AppRouter()
    
    var body: some View {
        switch router.route {
        case .splash:
            SplashScreen()
                .environmentObject(router)
        case .onboarding:
            OnboardingView()
                .environmentObject(router)
        case .dashboard:
            DashboardTabViewBuilder.build()
        }
    }
}

#Preview {
    AppBase()
}
