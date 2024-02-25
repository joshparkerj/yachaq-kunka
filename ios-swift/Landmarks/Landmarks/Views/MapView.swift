//
//  MapView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var landmark: Landmark
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: landmark.locationCoordinate,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
}

#Preview("Turtle Rock") {
    MapView(landmark: landmarks[0])
}

#Preview("Silver...") {
    MapView(landmark: landmarks[1])
}
