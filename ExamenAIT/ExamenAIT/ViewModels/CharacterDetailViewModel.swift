//
//  CharacterDetailViewModel.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

class CharacterDetailViewModel: ObservableObject {
    @Published var episodes: [Episode] = []
        @Published var isLoading = false
        @Published var error: String?

        private let apiService: APIServiceProtocol
        private let character: Character

        init(character: Character, apiService: APIServiceProtocol) {
            self.character = character
            self.apiService = apiService
            fetchEpisodes()
        }

        func fetchEpisodes() {
            isLoading = true
            apiService.fetchEpisodes(urls: character.episode) { [weak self] result in
                DispatchQueue.main.async {
                    self?.isLoading = false
                    switch result {
                    case .success(let episodes):
                        self?.episodes = episodes.sorted(by: { $0.id < $1.id })
                    case .failure(let error):
                        self?.error = error.localizedDescription
                    }
                }
            }
        }
}
