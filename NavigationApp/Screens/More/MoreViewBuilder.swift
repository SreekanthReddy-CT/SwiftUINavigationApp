//
//  MoreViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum MoreViewBuilder {
    @ViewBuilder @MainActor static func build(router: MoreRouter) -> some View {
        let viewModel = MoreViewModel(router: router)
        MoreView(viewModel: viewModel)
            .environmentObject(router)
    }
}
