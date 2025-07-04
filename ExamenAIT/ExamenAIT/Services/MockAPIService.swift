//
//  MockAPIService.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

class MockAPIService: APIServiceProtocol {
    func fetchCharacters(
            page: Int,
            name: String?,
            status: String?,
            species: String?,
            completion: @escaping (Result<CharacterAPIResponse, Error>) -> Void
        ) {
            let mockCharacter = Character(
                id: 1,
                name: "Rick Sanchez",
                status: "Alive",
                species: "Human",
                type: "",
                gender: "Male",
                origin: .init(name: "Earth"),
                location: .init(name: "Citadel of Ricks"),
                image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
                episode: ["https://rickandmortyapi.com/api/episode/1"]
            )
            
            let response = CharacterAPIResponse(
                        info: Info(next: nil),
                        results: [mockCharacter]
                    )

                    completion(.success(response))
        }

        func fetchEpisodes(urls: [String], completion: @escaping (Result<[Episode], Error>) -> Void) {
            let mockEpisode = Episode(id: 1, name: "Pilot", episode: "S01E01")
            completion(.success([mockEpisode]))
        }
    }

