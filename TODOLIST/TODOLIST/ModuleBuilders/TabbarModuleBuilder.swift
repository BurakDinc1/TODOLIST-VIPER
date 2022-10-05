//
//  TabbarModuleBuilder.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import UIKit

class TabbarModuleBuilder: TabbarModuleBuilderProtocol {
    
    static func build() -> UITabBarController {
        let tabbarViewController = TabbarRouter.start()
        return tabbarViewController
    }
    
}
