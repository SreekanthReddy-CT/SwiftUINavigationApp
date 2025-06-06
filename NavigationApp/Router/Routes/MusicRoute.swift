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

struct MusicFlow: View {
    @ObservedObject var router: MusicRouter
    
    var body: some View {
        NavigationStack(path: $router.path) {
            MusicMainViewBuilder.build(router: router)
                .navigationDestination(for: MusicRoute.self) { route in
                    route.destinationView()
                }
        }
    }
}

#Preview {
    MusicFlow(router: MusicRouter())
}
