//
//  ToDoEntity.swift
//  TODOLIST
//
//  Created by Burak Dinç on 6.10.2022.
//

import Foundation

struct ToDoEntity {
    
    var id: UUID
    var title: String
    var message: String
    var createdDate: Date
    var finishDate: Date
    
    init(id: UUID,
         title: String,
         message: String,
         createdDate: Date,
         finishDate: Date) {
        self.id = id
        self.title = title
        self.message = message
        self.createdDate = createdDate
        self.finishDate = finishDate
    }
    
}
