//
//  MovieMainViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum MovieMainViewBuilder {
    @ViewBuilder @MainActor static func build(router: MovieRouter, dashboardVM: DashboardTabViewModelProtocol?) -> some View {
        let viewModel = MovieMainViewModel(router: router, dashboardVM: dashboardVM)
        MovieMainView(viewModel: viewModel)
            .environmentObject(router)
    }
}
