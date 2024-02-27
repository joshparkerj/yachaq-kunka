//
//  PageView.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/27/24.
//

import SwiftUI

struct PageView <Page: View> : View {
    var pages: [Page]
    
    var body: some View {
        PageViewController(pages: pages)
            .aspectRatio(3.0 / 2.0, contentMode: .fit)
    }
}

#Preview {
    PageView(
        pages: ModelData().featured.map { feature in
            FeatureCard(landmark: feature)
        }
    )
}
