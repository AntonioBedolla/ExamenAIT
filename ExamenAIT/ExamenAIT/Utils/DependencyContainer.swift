//
//  DependencyContainer.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

class DependencyContainer {
    static let shared = DependencyContainer()

    //var apiService: APIServiceProtocol = MockAPIService()
    var apiService: APIServiceProtocol = APIService()
}
