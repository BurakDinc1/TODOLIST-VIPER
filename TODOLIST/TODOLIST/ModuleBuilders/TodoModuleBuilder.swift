//
//  TodoModuleBuilder.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import UIKit

class ToDoModuleBuilder: ModuleBuilderProtocol {
    
    static func build() -> UIViewController {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ToDoVC") as! ToDoVC
        viewController.title = "TODO's"
        let interactor = ToDoInteractor()
        let router = ToDoRouter(todoNavigationController: viewController.navigationController)
        let presenter = ToDoPresenter(interactorInput: interactor,
                                      routerInput: router)
        interactor.delegate = presenter
        presenter.presenterOutput = viewController
        viewController.presenter = presenter
        return viewController
    }
    
}
