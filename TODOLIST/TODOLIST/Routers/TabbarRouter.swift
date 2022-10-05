//
//  TabbarRouter.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import UIKit

class TabbarRouter {
    
    static func tabs(subModules: TabbarTabs) -> TabbarTabs {
        let todoTabbarItem = UITabBarItem(title: "TODO", image: UIImage(named: "to-do-list"), tag: 1)
        let alarmTabbarItem = UITabBarItem(title: "Alarms", image: UIImage(named: "alarm-clock"), tag: 2)
        
        subModules.todoVC.tabBarItem = todoTabbarItem
        subModules.alarmVC.tabBarItem = alarmTabbarItem
        
        return (todoVC: subModules.todoVC, alarmVC: subModules.alarmVC)
    }
    
}
