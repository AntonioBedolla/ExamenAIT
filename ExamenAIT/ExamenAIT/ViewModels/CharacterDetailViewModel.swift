//
//  CharacterDetailViewModel.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation

class CharacterDetailViewModel: ObservableObject {
    let character: Character

    init(character: Character) {
        self.character = character
    }
}
