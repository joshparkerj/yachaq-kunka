//
//  PageView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/27/24.
//

import SwiftUI

struct PageView <Page: View> : View {
    @State private var pageNumber = 0
    
    var pages: [Page]
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottomTrailing) {
                PageViewController(
                    pages: pages,
                    currentPage: $pageNumber
                )
                .aspectRatio(3.0 / 2.0, contentMode: .fit)
                
                Spacer()
                
                /*Text("Page: \(1 + $pageNumber.wrappedValue)")*/
                PageControl(
                    numberOfPages: pages.count,
                    currentPage: $pageNumber
                )
                .frame(width: CGFloat(pages.count + 18))
                .padding(.trailing)
            }
            /*
            Button(action: {
                pageNumber = 0
            }, label: {
                Text("Jump to Page One")
            })
            .buttonStyle(.bordered)*/
        }
    }
}

#Preview {
    PageView(
        pages: ModelData().featured.map { feature in
            FeatureCard(landmark: feature)
        }
    )
}
