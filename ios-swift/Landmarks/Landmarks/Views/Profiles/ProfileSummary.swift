//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/26/24.
//

import SwiftUI

struct ProfileSummary: View {
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
                        HikeBadge(name: "Doug Dimmadome")
                        HikeBadge(name: "Doug Dimmadome")
                        HikeBadge(name: "Doug Dimmadome")
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
}
