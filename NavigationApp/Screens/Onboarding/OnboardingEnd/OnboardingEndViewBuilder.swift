//
//  OnboardingEndViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum OnboardingEndViewBuilder {
    @MainActor static func build(router: OnboardingRouter) -> some View {
        let viewModel = OnboardingEndViewModel(router: router)
        return OnboardingEndView(viewModel: viewModel)
    }
}
