//
//  TabbarController.swift
//  Playground
//
//  Created by jiwoong on 2021/07/26.
//

import UIKit

class TabbarController: UITabBarController {
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setSwipe()
    }
    
    // MARK: - Set
    
    func setSwipe() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(_:)))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(_:)))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    // MARK: - Functions
    
    @objc func handleSwipeGesture(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            if (self.selectedIndex) < 1 {
                animateToTab(toIndex: self.selectedIndex+1)
            }
        } else if gesture.direction == .right {
            if (self.selectedIndex) > 0 {
                animateToTab(toIndex: self.selectedIndex-1)
            }
        }
    }
}

// MARK: - UITabBarControllerDelegate Extension

extension TabbarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard let tabViewControllers = tabBarController.viewControllers, let toIndex = tabViewControllers.firstIndex(of: viewController) else {
            return false
        }
        animateToTab(toIndex: toIndex)
        return true
    }
    
    func animateToTab(toIndex: Int) {
        guard let tabViewControllers = viewControllers, let selectedVC = selectedViewController else { return }
        guard let fromView = selectedVC.view,
              let toView = tabViewControllers[toIndex].view,
              let fromIndex = tabViewControllers.firstIndex(of: selectedVC),
              fromIndex != toIndex else { return }
        
        fromView.superview?.addSubview(toView)
        
        let screenWidth = UIScreen.main.bounds.size.width
        let scrollRight = toIndex > fromIndex
        let offset = (scrollRight ? screenWidth : -screenWidth)
        toView.center = CGPoint(x: fromView.center.x + offset, y: toView.center.y)
        
        view.isUserInteractionEnabled = false
        
        UIView.animate(withDuration: 0.3,
                       delay: 0.0,
                       usingSpringWithDamping: 1,
                       initialSpringVelocity: 0,
                       options: .curveEaseOut) {
            fromView.center = CGPoint(x: fromView.center.x - offset, y: fromView.center.y)
            toView.center = CGPoint(x: toView.center.x - offset, y: toView.center.y)
        } completion: { finished in
            fromView.removeFromSuperview()
            self.selectedIndex = toIndex
            self.view.isUserInteractionEnabled = true
        }

    }
}
