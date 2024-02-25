//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/25/24.
//

import SwiftUI



struct LandmarkList: View {
    @State var filterFaves = false
    @Binding var landmarks: [Landmark]
    
    var body: some View {
        NavigationSplitView {
            Toggle("", isOn: $filterFaves)
            List($landmarks.filter{ landmark in
                !filterFaves || landmark.isFavorite.wrappedValue
            }) { $landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: $landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}
