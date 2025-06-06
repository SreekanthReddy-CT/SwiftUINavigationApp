//
//  MoreView.swift
//  NavigationApp
//

import SwiftUI

struct MoreView: View {
    @EnvironmentObject var router: MoreRouter
    @StateObject private var viewModel: MoreViewModel
    
    init(viewModel: MoreViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        mainContainer
            .navigationTitle("More")
    }
    
    var mainContainer: some View {
        List {
            Button("Account Settings") {
                viewModel.didTapSettings()
            }
        }
    }
}

#Preview {
    MoreViewBuilder.build(router: MoreRouter())
}
