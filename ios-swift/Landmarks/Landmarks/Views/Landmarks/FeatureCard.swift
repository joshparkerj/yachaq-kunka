//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/27/24.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay {
                TextOverlay(landmark: landmark)
            }
    }
}

#Preview ("featured") {
    FeatureCard(landmark: ModelData().landmarks[0])
        .aspectRatio(3.0 / 2.0, contentMode: .fit)
}

#Preview ("not featured") {
    FeatureCard(landmark: ModelData().landmarks[1])
        .aspectRatio(3.0 / 2.0, contentMode: .fit)
}

struct TextOverlay: View {
    var landmark: Landmark
    
    var gradient : LinearGradient {
        .linearGradient(
            colors: [.black.opacity(0.6), .black.opacity(0.0)],
            startPoint: .bottom,
            endPoint: .center
        )
    }
    
    var body: some View {
        ZStack (alignment: .bottomLeading) {
            gradient
            VStack (alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}
