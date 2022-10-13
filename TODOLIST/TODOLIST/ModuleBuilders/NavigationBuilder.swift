//
//  NavigationBuilder.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import Foundation
import UIKit

protocol NavigationBuilderProtocol {
    static func build(viewController: UIViewController) -> UINavigationController
}

class NavigationBuilder: NavigationBuilderProtocol {
    
    static func build(viewController: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(nibName: nil, bundle: nil)
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.navigationBar.tintColor = .white
        navigationController.navigationBar.scrollEdgeAppearance = self.setNavBar()
        navigationController.navigationBar.standardAppearance = self.setNavBar()
        navigationController.viewControllers.append(viewController)
        return navigationController
    }
    
    static func setNavBar() -> UINavigationBarAppearance {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.backgroundColor = UIColor(named: "appMainColor")
        navBarAppearance.shadowColor = .clear
        return navBarAppearance
    }
    
}
