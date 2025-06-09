//
//  ProfileView.swift
//  NavigationApp
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var viewModel: ProfileViewModel
    @EnvironmentObject var router: MoreRouter
    
    init(viewModel: ProfileViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Account")) {
                    HStack {
                        Text("Username")
                        Spacer()
                        Text(viewModel.username)
                            .foregroundColor(.gray)
                    }
                }
                
                Section() {
                    Button("Sign In") {
                        viewModel.didTapSignIn()
                    }
                }
            }
        }
        .navigationTitle("Account Settings")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $viewModel.showOnboarding) {
            let onboardingRouter = OnboardingRouter()
            OnboardingFlow(router: onboardingRouter, wasPresentedModally: true)
        }
    }
}
