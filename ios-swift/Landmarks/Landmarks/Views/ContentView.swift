//
//  ContentView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI

struct ContentView: View {
    @State var landmarks: [Landmark]
    
    var body: some View {
        LandmarkList(landmarks: $landmarks)
    }
}

#Preview {
    ContentView(landmarks: resourceLandmarks)
}
