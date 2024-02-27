//
//  PageViewController.swift
//  Landmarks
//
//  Created by Joshua Parker on 2/27/24.
//

import SwiftUI

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    @Binding var currentPage: Int
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers(
            [context.coordinator.controllers[currentPage % context.coordinator.controllers.count]],
            direction: .forward,
            animated: true
        )
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    typealias UIViewControllerType = UIPageViewController
    
    class Coordinator : NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
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
        
        func pageViewController(
            _ pageViewController: UIPageViewController,
            didFinishAnimating finished: Bool,
            previousViewControllers: [UIViewController],
            transitionCompleted completed: Bool
        ) {
            if completed,
               let visibleViewController = pageViewController.viewControllers?.first,
               let index = controllers.firstIndex(of: visibleViewController) {
                parent.currentPage = index
            }
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
