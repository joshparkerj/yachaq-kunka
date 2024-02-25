//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/25/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    
    var body: some View {
        VStack {
            MapView(landmark: landmark)
                .frame(height: 300)
            
            CircleImage(landmark: landmark)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview("Turtle Rock") {
    LandmarkDetail(landmark: landmarks[0])
}

#Preview("Silver Salmon Creek") {
    LandmarkDetail(landmark: landmarks[1])
}
