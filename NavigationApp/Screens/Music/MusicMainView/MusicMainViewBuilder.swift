//
//  MusicMainViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum MusicMainViewBuilder {
    @ViewBuilder @MainActor static func build(router: MusicRouter, dashboardVM: DashboardTabViewModelProtocol?) -> some View {
        let viewModel = MusicMainViewModel(router: router, dashboardVM: dashboardVM)
        MusicMainView(viewModel: viewModel)
            .environmentObject(router)
    }
}
