//
//  ContentView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                MapView()
                    .frame(height: 350)
                Spacer()
            }
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    Spacer()
                    CircleImage()
                    Spacer()
                }
                
                Spacer()
                
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                
                /*.font(.subheadline)*/
                /*HStack{
                 Text("hey")
                 Spacer()
                 Text("hey")
                 Spacer()
                 Text("hey")
                 }*/
            }
            .padding()
        }
        
            
        /*Text(verbatim: "www.i-am-cooler.com")*/
        /*VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()*/
    }
}

#Preview {
    ContentView()
}
