//
//  OnboardingFlow.swift
//  NavigationApp
//

import SwiftUI

struct OnboardingFlow: View {
    @ObservedObject var router: OnboardingRouter
    @EnvironmentObject var appRouter: AppRouter
    @Environment(\.dismiss) private var dismiss
    let wasPresentedModally: Bool
    
    var body: some View {
        NavigationStack(path: $router.path) {
            OnboardingStartViewBuilder.build(router: router)
                .navigationDestination(for: OnboardingRoute.self) { route in
                    route.destinationView(router: router)
                }
        }
        .onChange(of: router.isFlowComplete) {
            if router.isFlowComplete {
                if wasPresentedModally {
                    dismiss()
                } else {
                    appRouter.navigate(to: .dashboard)
                }
            }
        }
    }
}

#Preview {
    OnboardingFlow(router: OnboardingRouter(), wasPresentedModally: false)
}
