//
//  MoreViewModel.swift
//  NavigationApp
//

import Foundation

@MainActor
final class MoreViewModel: ObservableObject {
    let router: MoreRouter

    init(router: MoreRouter) {
        self.router = router
    }

    func didTapSettings() {
        router.navigate(to: .profile)
    }
}
