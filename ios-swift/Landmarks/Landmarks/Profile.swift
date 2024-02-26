//
//  Profile.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/26/24.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season : String, CaseIterable, Identifiable {
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        case spring = "🌷"
        
        var id : String { rawValue }
    }
    
}
