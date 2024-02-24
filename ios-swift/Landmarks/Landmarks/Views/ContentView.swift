//
//  ContentView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .padding(.bottom, -130)
                .offset(y: -130)
            Divider()
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                //LandmarkRow()
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
