//
//  MapView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
}

#Preview("Turtle Rock") {
    MapView(coordinate: resourceLandmarks[0].coordinate)
}

#Preview("Silver...") {
    MapView(coordinate: resourceLandmarks[1].coordinate)
}
