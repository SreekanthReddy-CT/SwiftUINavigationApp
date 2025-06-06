//
//  MusicDetailView.swift
//  NavigationApp
//

import SwiftUI

struct MusicDetailView: View {
    @StateObject private var viewModel: MusicDetailViewModel
    
    init(viewModel: MusicDetailViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        mainContainer
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    var mainContainer: some View {
        VStack(spacing: 16) {
            Text("Now Playing")
                .font(.title)
            Text(viewModel.songTitle)
                .font(.headline)
        }
    }
}
