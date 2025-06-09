//
//  MovieMainViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class MovieMainViewModel: ObservableObject {
    let router: MovieRouter
    private(set) weak var dashboardVM: DashboardTabViewModelProtocol?
    
    @Published var movies: [String] = ["Inception", "The Matrix", "Interstellar"]

    init(router: MovieRouter, dashboardVM: DashboardTabViewModelProtocol? = nil) {
        self.router = router
        self.dashboardVM = dashboardVM
    }

    func didSelectMovie(id: String) {
        router.navigate(to: .detail(movieID: id))
    }
    
    func didTapProfile() {
        dashboardVM?.switchToMoreAndShowProfile()
    }
}
