//
//  ToDoRouter.swift
//  TODOLIST
//
//  Created by Burak Dinç on 6.10.2022.
//

import Foundation
import UIKit

class ToDoRouter: ToDoRouterInput {
    
    func navigateToToDoEntity(entity: ToDoEntity) {
        print("Burak--> yönlenecek")
    }
    
    func navigateToAddNewTodo(ref: UINavigationController?) {
        let alarmVC = AlarmModuleBuilder.build()
        ref?.pushViewController(alarmVC, animated: true)
        print("Burak--> Yönlenecek")
    }
    
    private(set) weak var todoNavigationController: UINavigationController!
    
    init(todoNavigationController: UINavigationController!) {
        self.todoNavigationController = todoNavigationController
    }
    
    func navigateToDetail(todoEntity: ToDoEntity) {
        let detailVC = ToDoDetailModuleBuilder.build(entity: todoEntity) // Detail Vc Sayfasi build metodunda entity alacak !
        self.todoNavigationController.pushViewController(detailVC, animated: true)
    }
    
}
