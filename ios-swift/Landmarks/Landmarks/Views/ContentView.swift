//
//  ContentView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tab : Tab = .featured
    enum Tab {
        //        case hike
        //        case category
        //        case landmark
        case featured
        case list
    }
    
    var body: some View {
//        switch tab {
//        case Tab.list: LandmarkList()
//        case Tab.featured: CategoryHome()
//        }
        TabView (selection: $tab) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
