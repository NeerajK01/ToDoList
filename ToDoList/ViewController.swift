//
//  ViewController.swift
//  ToDoList
//
//  Created by Neeraj kumar on 26/06/19.
//  Copyright © 2019 prolifics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableview: UITableView!
    var dataDict: ContactDTO?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
//        UserService.sharedInstance.getUser(completionHandler: {
//            (data, status, error) in
//            if status == "Fetch"{
//                self.dataArray = data!
//
//                DispatchQueue.main.async {
//                    self.tableview.reloadData()
//                }
//
//            }
//        })
        
        UserService.sharedInstance.getAlomaFireData(url: "", completionHandler: {
            (userData) in
            guard let jsonData = userData else{
                return
            }
            self.dataDict = jsonData
            print((self.dataDict?.contacts?[1].id)!)
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
        })
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataDict?.contacts?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        cell.accessoryType = .none
        cell.textLabel?.text =
                        "Email - ID -  \((self.dataDict?.contacts?[indexPath.row].email)!)"
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableview.cellForRow(at: indexPath) != nil{
            let finalArray = self.dataDict?.contacts?[indexPath.row]
            let vc = storyboard?.instantiateViewController(withIdentifier: "UserDataViewController") as? UserDataViewController
            
//            vc?.userId = finalArray.userId!
//            vc?.complete = finalArray.completed!
//            vc?.tiTle = finalArray.title!
//
//            self.navigationController?.pushViewController(vc!, animated: true)
        }
    }
}
