//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/25/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview("set") {
    FavoriteButton(isSet: .constant(true))
}

#Preview("unset") {
    FavoriteButton(isSet: .constant(false))
}
