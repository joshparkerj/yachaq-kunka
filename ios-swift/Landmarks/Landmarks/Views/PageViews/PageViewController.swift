//
//  PageViewController.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/27/24.
//

import SwiftUI

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])], 
            direction: .forward,
            animated: true
        )
    }
    
    typealias UIViewControllerType = UIPageViewController
}
