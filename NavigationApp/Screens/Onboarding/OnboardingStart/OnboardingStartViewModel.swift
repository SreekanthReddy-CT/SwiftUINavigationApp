//
//  OnboardingStartViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class OnboardingStartViewModel: ObservableObject {

    private let router: Router<OnboardingRoute>

    init(router: Router<OnboardingRoute>) {
        self.router = router
    }

    func didTapStart() {
        router.navigate(to: .end)
    }
}
