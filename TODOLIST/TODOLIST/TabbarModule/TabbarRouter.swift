//
//  TabbarRouter.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import UIKit

class TabbarRouter {
    
    static func start() -> UITabBarController {
        
        let todoVC = NavigationBuilder.build(viewController: ToDoModuleBuilder.build())
        let alarmVC = NavigationBuilder.build(viewController: AlarmModuleBuilder.build())
        
        let todoTabbarItem = UITabBarItem(title: "TODO", image: UIImage(named: "to-do-list")?.withRenderingMode(.alwaysTemplate), tag: 1)
        let alarmTabbarItem = UITabBarItem(title: "Alarms", image: UIImage(named: "alarm-clock")?.withRenderingMode(.alwaysTemplate), tag: 2)
        
        todoVC.tabBarItem = todoTabbarItem
        alarmVC.tabBarItem = alarmTabbarItem
        
        let tabbarTabs = (todoVC: todoVC, alarmVC: alarmVC)
        let tabbarVC = TabbarVC(tabs: tabbarTabs)
        return tabbarVC
    }
    
}
