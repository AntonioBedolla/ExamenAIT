//
//  CharacterListViewModel.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

class CharacterListViewModel: ObservableObject {
    @Published var characters: [Character] = []
    
    private let apiService: APIServiceProtocol

    init(apiService: APIServiceProtocol) {
        self.apiService = apiService
        fetchCharacters()
    }

    func fetchCharacters() {
        apiService.fetchCharacters { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    self?.characters = data
                case .failure(let error):
                    print("Error:", error)
                }
            }
        }
    }
}
