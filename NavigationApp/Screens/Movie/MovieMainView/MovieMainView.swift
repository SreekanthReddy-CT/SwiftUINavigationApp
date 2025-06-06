//
//  MovieMainView.swift
//  NavigationApp
//

import SwiftUI

struct MovieMainView: View {
    @EnvironmentObject var router: MovieRouter
    @StateObject private var viewModel: MovieMainViewModel
    
    init(viewModel: MovieMainViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        mainContainer
            .navigationTitle("Movies")
    }
    
    var mainContainer: some View {
        List(viewModel.movies, id: \.self) { movie in
            Button(action: {
                viewModel.didSelectMovie(id: movie)
            }) {
                Text(movie)
            }
        }
    }
}

#Preview {
    MovieMainViewBuilder.build(router: MovieRouter())
}
