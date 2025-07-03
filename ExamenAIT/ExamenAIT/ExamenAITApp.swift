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
            CharacterListView(
                viewModel: CharacterListViewModel(apiService: DependencyContainer.shared.apiService)
            )
        }
    }
}
