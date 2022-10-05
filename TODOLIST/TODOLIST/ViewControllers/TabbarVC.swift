//
//  TabbarVC.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import Foundation
import UIKit

class TabbarVC: UITabBarController {
    
    init(tabs: TabbarTabs) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [tabs.todoVC, tabs.alarmVC]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TabbarVC--> Yüklendi")
    }
}
