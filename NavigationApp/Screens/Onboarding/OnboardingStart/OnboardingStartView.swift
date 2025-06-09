//
//  OnboardingStartView.swift
//  NavigationApp
//

import SwiftUI

struct OnboardingStartView: View {
    @ObservedObject var viewModel: OnboardingStartViewModel

    var body: some View {
        VStack(spacing: 24) {
            Text("Welcome to Onboarding")
                .font(.title)

            Button("Start Onboarding") {
                viewModel.didTapStart()
            }
        }
        .navigationTitle("Getting Started")
    }
}
