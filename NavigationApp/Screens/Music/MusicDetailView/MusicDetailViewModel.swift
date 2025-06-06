//
//  MusicDetailViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class MusicDetailViewModel: ObservableObject {
    let songID: String
    @Published var songTitle: String

    init(songID: String) {
        self.songID = songID
        self.songTitle = "Now Playing: \(songID)"
    }
}
