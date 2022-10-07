//
//  ToDoContractor.swift
//  TODOLIST
//
//  Created by Burak Dinç on 6.10.2022.
//
import Combine
import UIKit

// Interactor Outputs
protocol ToDoInteractorOutputs {
    func onSuccessFetchTodo(todoList: [ToDoEntity])
}

// Interactor Inputs
protocol ToDoInteractorInputs {
    func fetchToDos()
}


// Presenter Input
protocol ToDoPresenterOutputs {
    func reloadTableView(todoList: [ToDoEntity])
    func setupTableViewCell()
    func indicatorView(animate: Bool)
}

// Presenter Output
protocol ToDoPresenterInputs {
    func viewDidLoad()
    func didSelectToDo(entity todo: ToDoEntity)
}

protocol ToDoRouterInput {
    func navigateToToDoEntity(entity: ToDoEntity)
}
