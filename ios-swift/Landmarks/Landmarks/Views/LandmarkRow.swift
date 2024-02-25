//
//  RowView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview("Turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}

#Preview("Silver Salmon Creek") {
    LandmarkRow(landmark: landmarks[1])
}

#Preview("Chilkoot Trail") {
    LandmarkRow(landmark: landmarks[2])
}

#Preview("Collection") {
    Group {
        LandmarkRow(landmark: landmarks[3])
        LandmarkRow(landmark: landmarks[4])
        LandmarkRow(landmark: landmarks[5])
    }
}
