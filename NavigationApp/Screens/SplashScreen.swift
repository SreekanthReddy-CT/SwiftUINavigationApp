//
//  SplashScreen.swift
//  NavigationApp
//

import SwiftUI

struct SplashScreen: View {
    @EnvironmentObject var router: AppRouter
    
    var body: some View {
        VStack {
            Spacer()
            Text("Splash Screen")
                .font(.largeTitle)
            Spacer()
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                let shouldShowOnboarding = true
                if shouldShowOnboarding {
                    router.moveToOnboarding()
                } else {
                    router.moveToDashboard()
                }
            }
        }
    }
}
