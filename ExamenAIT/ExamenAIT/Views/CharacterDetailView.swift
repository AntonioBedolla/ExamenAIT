//
//  CharacterDetailView.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import SwiftUI

struct CharacterDetailView: View {
    @ObservedObject var viewModel: CharacterDetailViewModel

        var body: some View {
            VStack(spacing: 16) {
                Text(viewModel.character.name)
                    .font(.title)
                Text("Status: \(viewModel.character.status)")
                Text("Species: \(viewModel.character.species)")
            }
            .padding()
            .navigationTitle("Detalle")
            NavigationLink("Ver mapa"){
                MapView()
            }
        }
}

/*
#Preview {
    CharacterDetailView()
}*/
