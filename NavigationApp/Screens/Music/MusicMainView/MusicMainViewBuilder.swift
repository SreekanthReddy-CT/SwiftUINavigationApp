//
//  MusicMainViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum MusicMainViewBuilder {
    @ViewBuilder @MainActor static func build(router: MusicRouter) -> some View {
        let viewModel = MusicMainViewModel(router: router)
        MusicMainView(viewModel: viewModel)
            .environmentObject(router)
    }
}
