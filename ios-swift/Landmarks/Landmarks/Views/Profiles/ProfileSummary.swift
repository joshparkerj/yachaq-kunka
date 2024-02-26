//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/26/24.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Seasonal Photos: ")
                + Text (profile.seasonalPhoto.rawValue)
                
                Text("Notifications: ")
                + Text(profile.prefersNotifications ? "On" : "Off")
                
                Text("Goal Date: ")
                + Text(profile.goalDate, style: .date)
                
                Divider()
                
                ScrollView(.horizontal) {
                    HStack {
                        HikeBadge(name: "Hiked the Half Dome")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadge(name: "Hiked the Capitol Dome")
                            .grayscale(0.5)
                            .hueRotation(Angle(degrees: 45))
                        HikeBadge(name: "Hiked the Dimmsdale Dimmadome")
                    }
                }
                .padding(.bottom)
                
                Divider()
                
                VStack {
                    Text("Recent Hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
