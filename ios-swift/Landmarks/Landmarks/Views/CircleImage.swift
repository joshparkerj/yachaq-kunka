//
//  CircleImage.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
        Circle()
            .stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}

#Preview("Turtle Rock") {
    CircleImage(image: landmarks[0].image)
}

#Preview("Silver...") {
    CircleImage(image: landmarks[1].image)
}
