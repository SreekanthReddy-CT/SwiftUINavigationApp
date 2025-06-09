//
//  MusicMainView.swift
//  NavigationApp
//

import SwiftUI

struct MusicMainView: View {
    @EnvironmentObject var router: MusicRouter
    @StateObject private var viewModel: MusicMainViewModel
    
    init(viewModel: MusicMainViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        mainContainer
            .navigationTitle("Music")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        viewModel.didTapProfile()
                    }) {
                        Image(systemName: "person.circle")
                    }
                }
            }
    }
    
    var mainContainer: some View {
        List(viewModel.songs, id: \.self) { song in
            Button(action: {
                viewModel.didSelectSong(id: song)
            }) {
                Text(song)
            }
        }
    }
}

#Preview {
    MusicMainViewBuilder.build(router: MusicRouter(), dashboardVM: nil)
}
