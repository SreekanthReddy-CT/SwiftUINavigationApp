//
//  OnboardingStartViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum OnboardingStartViewBuilder {
    @MainActor static func build(router: Router<OnboardingRoute>) -> some View {
        let viewModel = OnboardingStartViewModel(router: router)
        return OnboardingStartView(viewModel: viewModel)
            .environmentObject(router)
    }
}
