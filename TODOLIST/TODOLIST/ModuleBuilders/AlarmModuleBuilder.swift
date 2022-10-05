//
//  AlarmModuleBuilder.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import UIKit

class AlarmModuleBuilder: ModuleBuilderProtocol {
    
    static func build() -> UIViewController {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "AlarmVC") as! AlarmVC
        viewController.title = "Alarms"
        return viewController
    }
    
}
