//
//  AppBase.swift
//  NavigationApp
//

import SwiftUI

final class AppRouter: ObservableObject, Navigating {
    @Published var route: AppRoute = .splash

    func navigate(to destination: AppRoute) {
        route = destination
    }

    func reset() {
        route = .splash
    }
}

struct AppBase: View {
    @StateObject private var router = AppRouter()
    
    var body: some View {
        router.route
            .destinationView()
            .environmentObject(router)
    }
}

#Preview {
    AppBase()
}
