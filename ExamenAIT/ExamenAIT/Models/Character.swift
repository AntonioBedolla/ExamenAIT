//
//  Character.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation
import CoreLocation

/*struct Character: Identifiable, Decodable {
    let id: Int
    let name: String
    let image: String
    let status: String
    let species: String
}*/
struct Character: Identifiable, Decodable, Equatable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Origin
    let location: LocationInfo
    let image: String
    let episode: [String]
    
    struct Origin: Decodable, Equatable {
        let name: String
    }

    struct LocationInfo: Decodable, Equatable {
        let name: String
    }
}

extension Character {
    var simulatedCoordinate: CLLocationCoordinate2D {
        // Simulación simple basada en el ID
        let baseLat = 19.4326    // CDMX lat
        let baseLong = -99.1332  // CDMX long

        // Usa el ID para desplazamiento
        let latOffset = Double((id % 10)) * 0.01
        let longOffset = Double((id % 10)) * 0.01

        return CLLocationCoordinate2D(latitude: baseLat + latOffset, longitude: baseLong + longOffset)
    }
}
