//
//  DataService.swift
//  ToDoList
//
//  Created by Neeraj kumar on 26/06/19.
//  Copyright © 2019 prolifics. All rights reserved.
//

import Foundation
import Alamofire

class DataService{
    private init(){ }
    static let sharedInstance = DataService()
    
    func getDataResource(url: String, completionHandler: @escaping (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> Void){
        let configuration = URLSessionConfiguration.default
        configuration.waitsForConnectivity = true
        let session = URLSession(configuration: configuration)
        let getUserURL = APIConstant.sharedInstance.GET_USERS
        
        guard let url = URL(string: getUserURL) else{
            return
        }
        
        session.dataTask(with: url){
            (data, response, error) in
            completionHandler(data, response, error)
        }.resume()
        
    }
    
    func getDataResourceAlamofire(url: String, completionHandler: @escaping (_ data: Data?) -> Void){
        Alamofire.request(url).responseJSON {
            response in
            
            if let json = response.data {
                completionHandler(json)
            }
            
        }
    }
}
