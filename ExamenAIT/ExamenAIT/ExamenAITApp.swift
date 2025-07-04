//
//  ExamenAITApp.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 02/07/25.
//

import SwiftUI

@main
struct ExamenAITApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                CharacterListView(
                    viewModel: CharacterListViewModel(apiService: DependencyContainer.shared.apiService)
                )
                .tabItem {
                    Label("Personajes", systemImage: "person.3")
                }

                FavoritesView()
                    .tabItem {
                        Label("Favoritos", systemImage: "heart")
                    }
            }
        }
    }
}
