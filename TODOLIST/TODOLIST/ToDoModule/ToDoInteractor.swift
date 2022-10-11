//
//  ToDoInteractor.swift
//  TODOLIST
//
//  Created by Burak Dinç on 6.10.2022.
//

import Foundation
import Combine

class ToDoInteractor: ToDoInteractorInputs {
    
    var delegate: ToDoInteractorOutputs?
    var cancelable: Set<AnyCancellable> = Set<AnyCancellable>()
    
    func fetchToDos() {
        print("Burak--> Interactor FetchTodo")
        CoreDataService
            .shared
            .getToDos()
            .sink { todoList in
                self.delegate?.onSuccessFetchTodo(todoList: todoList)
            }.store(in: &self.cancelable)
    }
    
}
