//
//  MapLocation.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import Foundation
import MapKit
import CoreLocation

struct MapLocation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D

    static let example = MapLocation(coordinate: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437))
}

//Esto permite crear un MapLocation directamente desde un Character
extension MapLocation {
    init(from character: Character) {
            self.init(coordinate: character.simulatedCoordinate)
        }
}
