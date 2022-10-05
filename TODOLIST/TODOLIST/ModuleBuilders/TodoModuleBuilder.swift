//
//  TodoModuleBuilder.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import UIKit

protocol ModuleBuilderProtocol {
    static func build() -> UIViewController
}

class ToDoModuleBuilder: ModuleBuilderProtocol {
    
    static func build() -> UIViewController {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ToDoVC") as! ToDoVC
        viewController.title = "TODO's"
        return viewController
    }
    
}
