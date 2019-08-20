//
//  UserDataViewController.swift
//  ToDoList
//
//  Created by Neeraj kumar on 26/06/19.
//  Copyright © 2019 prolifics. All rights reserved.
//

import UIKit

class UserDataViewController: UIViewController {
    
    var userId: Int64?
    var complete: Bool?
    var tiTle: String?

    @IBOutlet weak var userID: UILabel!
    @IBOutlet weak var completed: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.userID.text = "\(String(describing: self.userId!))"
        self.completed.text = "\(String(describing: self.complete!))"
        self.titleLabel.text = self.tiTle
        
    }
    

}
