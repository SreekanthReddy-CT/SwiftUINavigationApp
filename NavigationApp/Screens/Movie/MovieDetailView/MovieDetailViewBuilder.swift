//
//  MovieDetailViewBuilder.swift
//  NavigationApp
//

import SwiftUI

enum MovieDetailViewBuilder {
    @MainActor static func build(movieID: String) -> some View {
        let viewModel = MovieDetailViewModel(movieID: movieID)
        return MovieDetailView(viewModel: viewModel)
    }
}
