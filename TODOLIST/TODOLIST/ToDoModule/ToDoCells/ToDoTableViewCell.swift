//
//  ToDoTableViewCell.swift
//  TODOLIST
//
//  Created by Burak Dinç on 6.10.2022.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setDesign()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func setCellWith(entity todo: ToDoEntity) {
        self.messageLabel.text = todo.message
        self.titleLabel.text = todo.title
    }
    
    private func setDesign() {
        self.parentView.layer.cornerRadius = 12
        self.parentView.layer.shadowRadius = 12
        self.parentView.layer.shadowColor = UIColor.gray.cgColor
    }
    
}
