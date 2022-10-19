//
//  ToDoCreateEditModuleBuilder.swift
//  TODOLIST
//
//  Created by Burak Dinç on 19.10.2022.
//

import Foundation
import UIKit

class ToDoCreateEditModuleBuilder: ToDoCreateEditModuleBuilderProtocol {
    
    static func build(entity todo: ToDoEntity?) -> UIViewController {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ToDoCreateEditVC") as! ToDoCreateEditVC
        if(todo == nil) {
            viewController.title = "Create New To Do"
        } else {
            viewController.title = "Edit Exist To Do"
        }
        viewController.todo = todo
        return viewController
    }
    
}
