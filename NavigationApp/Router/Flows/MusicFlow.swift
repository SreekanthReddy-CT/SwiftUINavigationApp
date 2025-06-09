//
//  MusicFlow.swift
//  NavigationApp
//

import SwiftUI

struct MusicFlow: View {
    @ObservedObject var router: MusicRouter
    var dashboardVM: DashboardTabViewModelProtocol?
    
    var body: some View {
        NavigationStack(path: $router.path) {
            MusicMainViewBuilder.build(router: router, dashboardVM: dashboardVM)
                .navigationDestination(for: MusicRoute.self) { route in
                    route.destinationView()
                }
        }
    }
}

#Preview {
    MusicFlow(router: MusicRouter())
}
