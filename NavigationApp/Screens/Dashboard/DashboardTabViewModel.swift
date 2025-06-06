//
//  DashboardTabViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class DashboardTabViewModel: ObservableObject {

    enum Tab {
        case music
        case movie
        case more
    }

    @Published var selectedTab: Tab = .music

    // Child routers
    @Published var musicRouter = MusicRouter()
    @Published var movieRouter = MovieRouter()
    @Published var moreRouter = MoreRouter()

    init() {
        // You can add logic here if needed (e.g. restoring last selected tab)
    }

    // Example method to switch tab programmatically (for cross-tab flow)
    func switchTo(tab: Tab) {
        selectedTab = tab
    }
}
