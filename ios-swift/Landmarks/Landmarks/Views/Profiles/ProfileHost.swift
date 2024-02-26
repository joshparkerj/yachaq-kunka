//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/26/24.
//

import SwiftUI

struct ProfileHost: View {
    @State private var profile: Profile = .default
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Text("Hello, World! and hello to you \(profile.username)")
            Spacer()
            ProfileSummary(profile: profile)
        }
        .padding([.top, .bottom, .trailing], 60)
        .padding(.leading, 30.0)
        .background(RoundedRectangle(cornerRadius: 60).fill(.white))
        .overlay(
            RoundedRectangle(cornerRadius: 60)
                .stroke(
                    Color(
                        red: 0.25,
                        green: 1.0,
                        blue: 0.75,
                        opacity: 1.0
                    ),
                    lineWidth: 12
                )
        )
        .cornerRadius(60)
        .shadow(color: .black, radius: 30, x: 10, y: 20)
    }
}

#Preview {
    ProfileHost()
}
