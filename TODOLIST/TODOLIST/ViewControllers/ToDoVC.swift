//
//  ToDoVC.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import Foundation
import UIKit

class ToDoVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ToDoVC--> Yüklendi")
    }
    
    private func setDesign() {
        self.title = "TODO's"
    }
}
