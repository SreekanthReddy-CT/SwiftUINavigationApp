//
//  MusicDetailViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum MusicDetailViewBuilder {
    @MainActor static func build(songID: String) -> some View {
        let viewModel = MusicDetailViewModel(songID: songID)
        return MusicDetailView(viewModel: viewModel)
    }
}
