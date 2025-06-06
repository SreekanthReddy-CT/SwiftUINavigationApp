//
//  ProfileViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum ProfileViewBuilder {
    @MainActor static func build() -> some View {
        let viewModel = ProfileViewModel()
        return ProfileView(viewModel: viewModel)
    }
}
