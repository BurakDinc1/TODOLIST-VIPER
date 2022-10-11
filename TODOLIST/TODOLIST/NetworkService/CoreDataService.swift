//
//  CoreDataService.swift
//  TODOLIST
//
//  Created by Burak Dinç on 6.10.2022.
//

import Foundation
import Combine
import CoreData
import UIKit

class CoreDataService {
    
    static let shared = CoreDataService()
    
    public func getToDos() -> AnyPublisher<[ToDoEntity], Never> {
        Deferred {
            Future { promise in
                
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let contex = appDelegate.persistentContainer.viewContext
                let request = NSFetchRequest<NSFetchRequestResult>(entityName: "TODOEntity")
                request.returnsObjectsAsFaults = false
                
                do {
                    let result = try contex.fetch(request)
                    var todoList: [ToDoEntity] = []
                    for todo in result as! [NSManagedObject] {
                        let id = todo.value(forKey: "id") as? UUID ?? UUID()
                        let title = todo.value(forKey: "title") as? String ?? ""
                        let message = todo.value(forKey: "message") as? String ?? ""
                        let createdDate = todo.value(forKey: "createdDate") as? Date ?? Date()
                        let finishDate = todo.value(forKey: "finishDate") as? Date ?? Date()
                        
                        let todo = ToDoEntity(id: id,
                                              title: title,
                                              message: message,
                                              createdDate: createdDate,
                                              finishDate: finishDate)
                        todoList.append(todo)
                    }
                    promise(.success(todoList))
                } catch {
                    print("Burak--> Data bulunamadı.")
                    promise(.success([]))
                }
                
            }
        }.eraseToAnyPublisher()
    }
    
}
