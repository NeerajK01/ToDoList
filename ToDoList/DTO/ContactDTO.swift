//
//  ContactDTO.swift
//  ToDoList
//
//  Created by Neeraj kumar on 04/07/19.
//  Copyright © 2019 prolifics. All rights reserved.
//

import Foundation
 
struct ContactDTO: Decodable {
    let contacts: [Contact]?
}

// MARK: - Contact
struct Contact: Decodable {
    let id: String?
    let name:String?
    let email: String?
    let address: String?
    let gender: String?
    let phone: Phone?
}

// MARK: - Phone
struct Phone: Decodable {
    let mobile: String?
    let home: String?
    let office: String?
}
