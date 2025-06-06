//
//  MusicMainViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class MusicMainViewModel: ObservableObject {
    @Published var songs: [String] = ["Song A", "Song B", "Song C"]
    
    let router: MusicRouter

    init(router: MusicRouter) {
        self.router = router
    }
    
    func didSelectSong(id: String) {
        router.navigate(to: .detail(songID: id))
    }
}
