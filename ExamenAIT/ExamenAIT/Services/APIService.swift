//
//  APIService.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

class APIService: APIServiceProtocol {
    func fetchCharacters(page: Int, name: String? = nil, status: String? = nil, species: String? = nil, completion: @escaping (Result<CharacterAPIResponse, Error>) -> Void) {
            var components = URLComponents(string: "https://rickandmortyapi.com/api/character")!
            var queryItems = [URLQueryItem(name: "page", value: "\(page)")]

            if let name = name, !name.isEmpty {
                queryItems.append(URLQueryItem(name: "name", value: name))
            }
            if let status = status, !status.isEmpty {
                queryItems.append(URLQueryItem(name: "status", value: status))
            }
            if let species = species, !species.isEmpty {
                queryItems.append(URLQueryItem(name: "species", value: species))
            }

            components.queryItems = queryItems

            guard let url = components.url else {
                completion(.failure(NSError(domain: "URL inválida", code: -1)))
                return
            }

            URLSession.shared.dataTask(with: url) { data, _, error in
                if let error = error {
                    completion(.failure(error))
                    return
                }

                guard let data = data else {
                    completion(.failure(NSError(domain: "Datos vacíos", code: -1)))
                    return
                }

                do {
                    let response = try JSONDecoder().decode(CharacterAPIResponse.self, from: data)
                    completion(.success(response))
                } catch {
                    completion(.failure(error))
                }
            }.resume()
        }
    
    func fetchEpisodes(urls: [String], completion: @escaping (Result<[Episode], Error>) -> Void) {
        let episodeIds = urls.compactMap { URL(string: $0)?.lastPathComponent }.joined(separator: ",")

        let urlString = "https://rickandmortyapi.com/api/episode/\(episodeIds)"
        guard let url = URL(string: urlString) else {
            completion(.failure(NSError(domain: "URL inválida", code: -1)))
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "Sin datos", code: -1)))
                return
            }

            do {
                if episodeIds.contains(",") {
                    let episodes = try JSONDecoder().decode([Episode].self, from: data)
                    completion(.success(episodes))
                } else {
                    let episode = try JSONDecoder().decode(Episode.self, from: data)
                    completion(.success([episode]))
                }
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
}

    struct CharacterAPIResponse: Decodable {
        let info: Info
        let results: [Character]

        struct Info: Decodable {
            let next: String?
        }
    }
