//
//  UserService.swift
//  ToDoList
//
//  Created by Neeraj kumar on 26/06/19.
//  Copyright © 2019 prolifics. All rights reserved.
//

import Foundation

class UserService{
    private init(){ }
    static let sharedInstance = UserService()
    
    func getUser(completionHandler: @escaping (_ data: [UserDTO]?, _ status: String, _ error: Error?)-> Void){
        DataService.sharedInstance.getDataResource(url: APIConstant.sharedInstance.GET_USERS, completionHandler: {
            (data, response, error) in
            
            guard let data = data else{
                return
            }
            do{
                
                let fetchArray = try JSONDecoder().decode([UserDTO].self, from: data)
                completionHandler(fetchArray, "Fetch", error)
                
            }catch{
                print("error in JSON FILE")
            }
        })
    }
    
    func getAlomaFireData(url: String,completionHandler: @escaping (_ data: ContactDTO?) -> Void){
        
        DataService.sharedInstance.getDataResourceAlamofire(url: APIConstant.sharedInstance.GET_CONTACTS, completionHandler: {
                data in
            
                do{
                    guard let userData = data else{
                        return
                    }
                    
                    let decodeData = try JSONDecoder().decode(ContactDTO.self, from: userData)
                    //print(data)
                    completionHandler(decodeData)
                    
                }catch{
                    print(error)
                }
            
        })
       
    }
}
