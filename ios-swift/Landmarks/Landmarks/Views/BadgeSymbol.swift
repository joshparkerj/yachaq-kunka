//
//  BadgeSymbol.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/25/24.
//

import SwiftUI

struct BadgeSymbol: View {
    var body: some View {
        let height: CGFloat = 150.0
        let width: CGFloat = 250.0
        let topHeight = height / 3
        
        ZStack {
            Path{ path in
                path.move(to: CGPoint(x: width / 2, y: topHeight / 2))
                let top = [
                    CGPoint(
                        x: 0.5 * width,
                        y: 0.0 * topHeight
                    ),
                    CGPoint(
                        x: 0.71 * width,
                        y: 1.2 * topHeight
                    ),
                    CGPoint(
                        x: 0.5 * width,
                        y: 0.75 * topHeight
                    ),
                    CGPoint(
                        x: 0.29 * width,
                        y: 1.2 * topHeight
                    ),
                ]
                
                top.forEach{ point in
                    path.addLine(to: point)
                }
                
                path.addLine(to: top[0])
            }
            .fill(.red)
            
            Path{ path in
                path.move(to: CGPoint(x: width / 2, y: topHeight + (height - topHeight) / 2))
                
                let bottom = [
                    CGPoint(
                        x: 0.5 * width,
                        y: 0.0 * (height - topHeight) + topHeight
                    ),
                    CGPoint(
                        x: 0.75 * width,
                        y: 0.25 * (height - topHeight) + topHeight
                    ),
                    CGPoint(
                        x: 1.0 * width,
                        y: 1.0 * (height - topHeight) + topHeight
                    ),
                    CGPoint(
                        x: 0.0 * width,
                        y: 1.0 * (height - topHeight) + topHeight
                    ),
                    CGPoint(
                        x: 0.25 * width,
                        y: 0.25 * (height - topHeight) + topHeight
                    ),
                ]
                
                bottom.forEach{ point in
                    path.addLine(to: point)
                }
                
                path.addLine(to: bottom[0])
            }
            .fill(.red)
        }
    }
}

#Preview {
    BadgeSymbol()
}
