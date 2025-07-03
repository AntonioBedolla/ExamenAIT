//
//  MapView.swift
//  ExamenAIT
//
//  Created by Antonio Bedolla on 03/07/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437), // Los Ángeles
            span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        )

        var body: some View {
            Map(coordinateRegion: $region, annotationItems: [MapLocation.example]) { location in
                MapMarker(coordinate: location.coordinate, tint: .blue)
            }
            .navigationTitle("Ubicación")
        }
}

#Preview {
    MapView()
}
