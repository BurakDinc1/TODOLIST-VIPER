//
//  ToDoPresenter.swift
//  TODOLIST
//
//  Created by Burak Dinç on 6.10.2022.
//

import Foundation
import UIKit

class ToDoPresenter: ToDoPresenterInputs, ToDoInteractorOutputs {
    
    var interactorInput: ToDoInteractorInputs?
    var presenterOutput: ToDoPresenterOutputs?
    var routerInput: ToDoRouterInput?
    
    func viewDidLoad() {
        print("Burak--> Presenter ViewDidLoad")
        self.presenterOutput?.setupTableViewCell()
        self.presenterOutput?.indicatorView(animate: true)
        self.interactorInput?.fetchToDos()
    }
    
    func onSuccessFetchTodo(todoList: [ToDoEntity]) {
        print("Burak--> Presenter onSuccessFetchTodo")
        self.presenterOutput?.reloadTableView(todoList: todoList)
        self.presenterOutput?.indicatorView(animate: false)
    }
    
    func didSelectToDo(entity todo: ToDoEntity) {
        print("Burak--> Presenter didSelectToDo")
        self.routerInput?.navigateToToDoEntity(entity: todo)
    }
    
    func didTappedAddNewTodoButton(ref: UINavigationController?) {
        print("Burak--> Presenter didTappedAddNewTodoButton")
        self.routerInput?.navigateToAddNewTodo(ref: ref)
    }
    
}
