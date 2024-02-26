//
//  BadgeForeground.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/25/24.
//

import SwiftUI

struct BadgeForeground: View {
    let offsetX: CGFloat
    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<8) { rotation in
                let degrees: Double = 360.0 * Double(rotation) / 8.0
                RotatedBadgeSymbol(angle: Angle(degrees: degrees))
                    .opacity(0.40)
                    .padding(-24)
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .offset(x: 0.0, y: geometry.size.height * 0.5)
                
            }
        }
    }
}

#Preview {
    BadgeForeground(offsetX: 0.0)
}
