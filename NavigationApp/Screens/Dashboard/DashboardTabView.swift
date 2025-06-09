//
//  DashboardTabView.swift
//  NavigationApp
//

import SwiftUI

struct DashboardTabView: View {
    
    @StateObject private var viewModel: DashboardTabViewModel
    
    init(viewModel: DashboardTabViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        containerView
    }
    
    var containerView: some View {
        TabView(selection: $viewModel.selectedTab) {
            // MUSIC TAB
            musicTab
            
            // MOVIE TAB
            movieTab
            
            // MORE TAB
            moreTab
        }
    }
    
    var musicTab: some View {
        MusicFlow(router: viewModel.musicRouter, dashboardVM: viewModel)
        .tabItem {
            Label("Music", systemImage: "music.note")
        }
        .tag(DashboardTabViewModel.Tab.music)
    }
    
    var movieTab: some View {
        MovieFlow(router: viewModel.movieRouter, dashboardVM: viewModel)
            .tabItem {
                Label("Movie", systemImage: "film")
            }
            .tag(DashboardTabViewModel.Tab.movie)
    }
    
    var moreTab: some View {
        MoreFlow(router: viewModel.moreRouter)
            .tabItem {
                Label("More", systemImage: "ellipsis.circle")
            }
            .tag(DashboardTabViewModel.Tab.more)
    }
}

#Preview {
    DashboardTabViewBuilder.build()
}
