//
//  OnboardingEndView.swift
//  NavigationApp
//

import SwiftUI

struct OnboardingEndView: View {
    @ObservedObject var viewModel: OnboardingEndViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("You're all set!")
                .font(.title)

            Button("Complete") {
                viewModel.completeOnboarding()
            }
        }
        .navigationTitle("Finish")
    }
}
