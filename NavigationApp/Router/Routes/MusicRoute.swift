//
//  MusicRoute.swift
//  NavigationApp
//

import SwiftUI

typealias MusicRouter = Router<MusicRoute>

enum MusicRoute: Hashable {
    case home
    case detail(songID: String)
}

extension MusicRoute {
    @MainActor @ViewBuilder
    func destinationView() -> some View {
        switch self {
        case .home:
            EmptyView()
        case .detail(let songID):
            MusicDetailViewBuilder.build(songID: songID)
        }
    }
}
