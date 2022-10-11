//
//  ToDoDetailModuleBuilder.swift
//  TODOLIST
//
//  Created by Burak Dinç on 6.10.2022.
//

import Foundation
import UIKit

class ToDoDetailModuleBuilder: ToDoDetailModuleBuilderProtocol {
    
    static func build(entity todo: ToDoEntity) -> UIViewController {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ToDoDetailVC") as! ToDoDetailVC
        viewController.todo = todo
        return viewController
    }
    
}
