//
//  MovieFlow.swift
//  NavigationApp
//

import SwiftUI

struct MovieFlow: View {
    @ObservedObject var router: MovieRouter
    var dashboardVM: DashboardTabViewModelProtocol?
    
    var body: some View {
        NavigationStack(path: $router.path) {
            MovieMainViewBuilder.build(router: router, dashboardVM: dashboardVM)
                .navigationDestination(for: MovieRoute.self) { route in
                    route.destinationView()
                }
        }
    }
}

#Preview {
    MovieFlow(router: MovieRouter())
}
