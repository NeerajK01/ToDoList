//
//  UserDTO.swift
//  ToDoList
//
//  Created by Neeraj kumar on 26/06/19.
//  Copyright © 2019 prolifics. All rights reserved.
//

import Foundation
struct UserDTO: Decodable {
    let userId: Int64?
    let id: Int64?
    let title: String?
    let completed: Bool?
}
