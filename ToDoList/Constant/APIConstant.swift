//
//  APIConstant.swift
//  ToDoList
//
//  Created by Neeraj kumar on 26/06/19.
//  Copyright © 2019 prolifics. All rights reserved.
//

import Foundation
class APIConstant{
    
    private init(){}
    
    static let sharedInstance = APIConstant()
    
    let GET_USERS = "https://jsonplaceholder.typicode.com/todos"
    let GET_CONTACTS = "https://api.androidhive.info/contacts/"
    
}
