//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/25/24.
//

import SwiftUI



struct LandmarkList: View {
    var body: some View {
        //Text("hi")
        List(landmarks) {
            landmark in
            LandmarkRow(landmark: landmark)
        }
        /*List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
            LandmarkRow(landmark: landmarks[3])
            LandmarkRow(landmark: landmarks[4])
            /*landmarks.map {
                LandmarkRow(landmark: $0)
            }*/
        }*/
    }
}

#Preview {
    LandmarkList()
}
