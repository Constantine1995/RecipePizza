//
//  ContainerViewController.swift
//
//
//  Created by mac on 3/26/19.
//

import UIKit

class ContainerViewController: UIViewController {
    
    var menuViewController: UIViewController!
    var centerController: UIViewController!
    var isExpanded = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHomeViewController()
    }
    
    func setupHomeViewController() {
       let homeController =  HomeViewController()
        homeController.delegate = self
        centerController = UINavigationController(rootViewController: homeController)
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    func ShowMenuController(shouldExpand: Bool) {
        if shouldExpand {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }, completion: nil)
        }
    }
    
    func setupMenuViewController() {
        if menuViewController == nil {
            menuViewController = MenuViewController()
            view.insertSubview(menuViewController.view, at: 0)
            addChild(menuViewController)
            menuViewController.didMove(toParent: self)
        }
    }
    
    
    
}
