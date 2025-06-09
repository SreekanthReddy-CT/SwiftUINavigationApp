//
//  MovieRoute.swift
//  NavigationApp
//

import SwiftUI

typealias MovieRouter = Router<MovieRoute>

enum MovieRoute: Hashable {
    case home
    case detail(movieID: String)
}

extension MovieRoute {
    @MainActor @ViewBuilder
    func destinationView() -> some View {
        switch self {
        case .home:
            EmptyView()
        case .detail(let movieID):
            MovieDetailViewBuilder.build(movieID: movieID)
        }
    }
}
