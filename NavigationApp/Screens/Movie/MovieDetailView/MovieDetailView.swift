//
//  MovieDetailView.swift
//  NavigationApp
//

import SwiftUI

struct MovieDetailView: View {
    @StateObject private var viewModel: MovieDetailViewModel
    
    init(viewModel: MovieDetailViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        mainContainer
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    var mainContainer: some View {
        VStack(spacing: 16) {
            Text("Now Showing")
                .font(.title)
            Text(viewModel.movieTitle)
                .font(.headline)
        }
    }
}

