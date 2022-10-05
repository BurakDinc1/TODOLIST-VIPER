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
        var navigationController = UINavigationController(nibName: nil, bundle: nil)
        navigationController.viewControllers.append(viewController)
        return navigationController
    }
    
}
