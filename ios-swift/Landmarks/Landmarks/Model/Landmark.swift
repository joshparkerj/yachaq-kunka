//
//  Landmark.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark : Codable, Hashable, Identifiable {
    var name: String
    //    var category: String
    //    var city: String
    var state: String
    var id: Int
    //    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
    struct Coordinates : Codable, Hashable {
        var longitude: Double
        var latitude: Double
    }
    private var coordinates: Coordinates
    var description: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D (
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
