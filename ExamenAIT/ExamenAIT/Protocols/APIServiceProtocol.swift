//
//  APIServiceProtocol.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

protocol APIServiceProtocol {
    func fetchCharacters(
        page: Int,
        name: String?,
        status: String?,
        species: String?,
        completion: @escaping (Result<CharacterAPIResponse, Error>) -> Void)
    
    func fetchEpisodes(urls: [String], completion: @escaping (Result<[Episode], Error>) -> Void)
}
