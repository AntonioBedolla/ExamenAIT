//
//  MockAPIService.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

class MockAPIService: APIServiceProtocol {
    func fetchCharacters(completion: @escaping (Result<[Character], Error>) -> Void) {
        let characters = [
            Character(id: 1, name: "Rick Sanchez", image: "", status: "Alive", species: "Human"),
            Character(id: 2, name: "Morty Smith", image: "", status: "Alive", species: "Human")
        ]
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            completion(.success(characters))
        }
    }
}
