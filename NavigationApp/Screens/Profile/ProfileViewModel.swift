//
//  ProfileViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class ProfileViewModel: ObservableObject {
    @Published var username: String = "John Appleseed"
}
