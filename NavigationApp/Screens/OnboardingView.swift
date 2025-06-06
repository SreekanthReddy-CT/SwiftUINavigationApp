//
//  OnboardingView.swift
//  NavigationApp
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var router: AppRouter
    
    var body: some View {
        VStack {
            Spacer()
            Text("Onboarding")
                .font(.title)
            Spacer()
            Button("Completed") {
                router.moveToDashboard()
            }
            .padding()
            Spacer()
        }
    }
}
