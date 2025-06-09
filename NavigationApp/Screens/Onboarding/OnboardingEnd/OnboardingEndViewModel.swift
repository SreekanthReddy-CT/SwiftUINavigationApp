//
//  OnboardingEndViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class OnboardingEndViewModel: ObservableObject {
    @Published var router: OnboardingRouter

    init(router: OnboardingRouter) {
        self.router = router
    }

    func completeOnboarding() {
        router.isFlowComplete = true
    }
}

