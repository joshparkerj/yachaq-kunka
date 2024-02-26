//
//  File.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/26/24.
//

import Foundation

struct Hike : Codable, Hashable, Identifiable {
    static var formatter = LengthFormatter()
    
    var name: String
    var id: Int
    var distance: Double
    var difficulty: Int
    
    struct Observation : Codable, Hashable {
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
        var distanceFromStart: Double
    }
    
    var observations: [Observation]
    
    var distanceText: String {
        Hike.formatter.string(
            fromValue: distance,
            unit: .kilometer
        )
    }
}
