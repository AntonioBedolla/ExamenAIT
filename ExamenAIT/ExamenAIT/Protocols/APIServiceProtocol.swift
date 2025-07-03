//
//  APIServiceProtocol.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

protocol APIServiceProtocol {
    func fetchCharacters(completion: @escaping (Result<[Character], Error>) -> Void)
}
