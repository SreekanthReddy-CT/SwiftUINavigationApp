//
//  DashboardTabViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum DashboardTabViewBuilder {
    @MainActor static func build() -> some View {
        let viewModel = DashboardTabViewModel()
        return DashboardTabView(viewModel: viewModel)
    }
}
