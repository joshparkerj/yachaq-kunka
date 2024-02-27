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
        
        pageViewController.dataSource = context.coordinator
        
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers(
            //            [UIHostingController(rootView: pages[0])],
            [context.coordinator.controllers[0]],
            direction: .forward,
            animated: true
        )
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    typealias UIViewControllerType = UIPageViewController
    
    // *** *** ***
    
    class Coordinator : NSObject, UIPageViewControllerDataSource {
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = controllers.firstIndex(of: viewController)
            else {return nil}
            if index == controllers.count - 1 {return controllers.first}
            return controllers[index + 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = controllers.firstIndex(of: viewController)
            else {return nil}
            if index == 0 {return controllers.last}
            return controllers[index - 1]
        }
        
        var parent: PageViewController
        var controllers = [UIViewController]()
        
        init (
            _ pageViewController: PageViewController
        ) {
            parent = pageViewController
            controllers = parent.pages.map { page in
                UIHostingController(rootView: page)
            }
        }
    }
}
