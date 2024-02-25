//
//  RowView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI

struct LandmarkRow: View {
    @Binding var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            Toggle(
                "",
                isOn: $landmark.isFavorite
            )
        }
    }
}
