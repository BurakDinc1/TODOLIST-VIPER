//
//  ToDoVC.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import Foundation
import UIKit

class ToDoVC: UIViewController, ToDoPresenterOutputs {
    
    var presenter: ToDoPresenterInputs?
    var todoList: [ToDoEntity] = []
    
    @IBOutlet weak var todoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setDesign()
        self.presenter?.viewDidLoad()
    }
    
    func reloadTableView(todoList: [ToDoEntity]) {
        print("Burak--> ToDoVC--> Reload Table View Cell")
        self.todoList = todoList
        self.todoTableView.reloadData()
    }
    
    func setupTableViewCell() {
        print("Burak--> ToDoVC--> Reload Setup Table View ")
        print("")
    }
    
    func indicatorView(animate: Bool) {
        if(animate) {
            print("Yükleniyor...")
        } else {
            print("Yüklendi !")
        }
    }
    
    private func setDesign() {
        let addButton = UIBarButtonItem(title: "New ToDo", style: .plain, target: self, action: #selector(self.addTodoButtonTapped(sender:)))
        self.navigationItem.rightBarButtonItem = addButton
        self.navigationItem.rightBarButtonItem?.image = UIImage(named: "plus")
    }
    
    @objc private func addTodoButtonTapped(sender: UIBarButtonItem) {
        self.presenter?.didTappedAddNewTodoButton(ref: self.navigationController ?? nil)
    }
    
}

extension ToDoVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.todoTableView.dequeueReusableCell(withIdentifier: "ToDoTableViewCell", for: indexPath) as! ToDoTableViewCell
        let todo = self.todoList[indexPath.row]
        cell.setCellWith(entity: todo)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todo = self.todoList[indexPath.row]
        self.presenter?.didSelectToDo(entity: todo)
    }
}
