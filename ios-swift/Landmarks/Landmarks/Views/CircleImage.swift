//
//  CircleImage.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI

struct CircleImage: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.image
            .clipShape(Circle())
            .overlay(
        Circle()
            .stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}

#Preview("Turtle Rock") {
    CircleImage(landmark: landmarks[0])
}

#Preview("Silver...") {
    CircleImage(landmark: landmarks[1])
}
