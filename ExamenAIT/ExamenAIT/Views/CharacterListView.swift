//
//  CharacterListView.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import SwiftUI

struct CharacterListView: View {
    @StateObject private var viewModel: CharacterListViewModel

        init(viewModel: CharacterListViewModel = CharacterListViewModel(apiService: MockAPIService())) {
            _viewModel = StateObject(wrappedValue: viewModel)
        }

        var body: some View {
            NavigationView {
                List(viewModel.characters) { character in
                    NavigationLink(destination: CharacterDetailView(viewModel: CharacterDetailViewModel(character: character))) {
                        Text(character.name)
                    }
                }
                .navigationTitle("Rick & Morty")
            }
        }
}

#Preview {
    CharacterListView()
}
