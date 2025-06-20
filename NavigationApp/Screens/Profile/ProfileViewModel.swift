//
//  ProfileViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class ProfileViewModel: ObservableObject {
    @Published var username: String = "John Appleseed"
    
    @Published var showOnboarding = false
    
    func didTapSignIn() {
        showOnboarding = true
    }
}
