//
//  CharacterListViewModelTests.swift
//  ExamenAITTests
//
//  Created by Antonio Bedolla on 03/07/25.
//

import XCTest

@testable import ExamenAIT

final class CharacterListViewModelTests: XCTestCase {

    func testFetchCharactersReturnsMockedData() {
        // Arrange
        let mockService = MockAPIService()
        let viewModel = CharacterListViewModel(apiService: mockService)

        let expectation = XCTestExpectation(description: "Fetch mocked characters")

        // Act
        viewModel.fetchCharacters()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            // Assert
            XCTAssertEqual(viewModel.characters.count, 1)
            XCTAssertEqual(viewModel.characters.first?.name, "Rick Sanchez")
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 1)
    }
}
