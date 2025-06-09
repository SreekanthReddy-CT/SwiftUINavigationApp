//
//  MusicMainViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class MusicMainViewModel: ObservableObject {
    
    let router: MusicRouter

    private(set) weak var dashboardVM: DashboardTabViewModelProtocol?
    
    @Published var songs: [String] = ["Song A", "Song B", "Song C"]
    
    init(router: MusicRouter, dashboardVM: DashboardTabViewModelProtocol? = nil) {
        self.router = router
        self.dashboardVM = dashboardVM
    }
    
    func didSelectSong(id: String) {
        router.navigate(to: .detail(songID: id))
    }
    
    func didTapProfile() {
        dashboardVM?.switchToMoreAndShowProfile()
    }
}
