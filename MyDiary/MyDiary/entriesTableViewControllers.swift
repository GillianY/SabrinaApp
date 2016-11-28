//
//  entriesTableViewControllers.swift
//  MyDiary
//
//  Created by ucom Apple 13 on 2016/11/25.
//  Copyright © 2016年 GinaY. All rights reserved.
//

import Foundation
import UIKit

class entriesTableViewController:  UITableViewController  {
    let section = ["pizza", "deep dish pizza", "calzone"]
    
    let items = [["Margarita", "BBQ Chicken", "Pepperoni"], ["sausage", "meat lovers", "veggie lovers"], ["sausage", "chicken pesto", "prawns", "mushrooms"]]
    
    
//    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        
//        return self.section//\[section\]
//        
//    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       // return self.section;
    }
  
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.section.count;
    }
    
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        
//        return self.section.count
//        
//    }
 

    
}
