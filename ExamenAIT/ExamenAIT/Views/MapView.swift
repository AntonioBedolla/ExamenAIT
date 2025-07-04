//
//  MapView.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    let location: MapLocation
    
        @State private var region: MKCoordinateRegion

        init(location: MapLocation) {
            self.location = location
            _region = State(initialValue: MKCoordinateRegion(
                center: location.coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            ))
        }

        var body: some View {
            Map(coordinateRegion: $region, annotationItems: [location]) { loc in
                MapMarker(coordinate: loc.coordinate, tint: .blue)
            }
            .navigationTitle("Ubicación")
            .navigationBarTitleDisplayMode(.inline)
        }
}
