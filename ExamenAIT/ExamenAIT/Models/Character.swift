//
//  Character.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

struct Character: Identifiable, Decodable {
    let id: Int
    let name: String
    let image: String
    let status: String
    let species: String
}
