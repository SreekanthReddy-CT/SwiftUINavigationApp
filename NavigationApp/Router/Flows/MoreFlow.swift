//
//  MoreFlow.swift
//  NavigationApp
//

import SwiftUI

struct MoreFlow: View {
    @ObservedObject var router: MoreRouter
    
    var body: some View {
        NavigationStack(path: $router.path) {
            MoreViewBuilder.build(router: router)
                .navigationDestination(for: MoreRoute.self) { route in
                    route.destinationView()
                        .environmentObject(router)
                }
        }
    }
}

#Preview {
    MoreFlow(router: MoreRouter())
}
