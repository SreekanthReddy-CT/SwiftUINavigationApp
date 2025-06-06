//
//  MovieMainViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class MovieMainViewModel: ObservableObject {
    let router: MovieRouter
    @Published var movies: [String] = ["Inception", "The Matrix", "Interstellar"]

    init(router: MovieRouter) {
        self.router = router
    }

    func didSelectMovie(id: String) {
        router.navigate(to: .detail(movieID: id))
    }
}
