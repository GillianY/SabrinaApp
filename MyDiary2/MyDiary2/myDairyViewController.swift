//
//  myDairyViewController.swift
//  MyDiary2
//
//  Created by ucom Apple 13 on 2016/11/28.
//  Copyright © 2016年 Gillian_studio. All rights reserved.
//

import UIKit

class myDairyViewController: UIViewController {
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor();
        self.title = "myDiary"
        
        let rightButton = UIBarButtonItem(
            barButtonSystemItem:.Edit,
            target: self,
            action: #selector(myDairyViewController.edit))
        // 加到導覽列中
        self.navigationItem.rightBarButtonItem = rightButton
        
        // 建立一個按鈕
        let myButton = UIButton(frame: CGRect(
            x: 100, y: 100, width: 120, height: 40))
        myButton.setTitle("回前頁", forState:.Normal)
        myButton.backgroundColor = UIColor.blueColor()
        myButton.addTarget(
            self,
            action: #selector(myDairyViewController.back),
            forControlEvents: .TouchUpInside )
        self.view.addSubview(myButton)
        
           }
    
    func edit() {
        print("edit action")
    }
    
    func back() {
        self.navigationController!.popViewControllerAnimated(true)
        //popViewController(animated: true)
    }

   
}
