//
//  MovieDetailViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class MovieDetailViewModel: ObservableObject {
    let movieID: String
    @Published var movieTitle: String

    init(movieID: String) {
        self.movieID = movieID
        self.movieTitle = "Now Showing: \(movieID)"
    }
}

