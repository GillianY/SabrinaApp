//
//  ViewController.swift
//  MyDiary2
//
//  Created by ucom Apple 13 on 2016/11/28.
//  Copyright © 2016年 Gillian_studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"sky2.png")!)
        self.title = "使用者"
        self.navigationController!.navigationBar.barTintColor =
            UIColor.init(colorLiteralRed: 20, green: 20, blue: 200, alpha: 0.5)
        self.navigationController!.navigationBar.translucent = false
        
        let leftButton = UIBarButtonItem(
            image: UIImage(named:"Pumpkin_64"),
            style:.Plain ,
            target:self ,
            action: #selector(ViewController.check))
        
        self.navigationItem.leftBarButtonItem = leftButton
        
        let rightButton = UIBarButtonItem(
            title:"設定",
            style:.Plain,
            target:self,
            action:#selector(ViewController.setting))
        self.navigationItem.leftBarButtonItem = rightButton
        
        
        
        
        let myButton = UIButton(frame: CGRect(
            x: 0, y: 0, width: 120, height: 40))
        myButton.setTitle("toDiary", forState:.Normal)
        myButton.backgroundColor = UIColor.blueColor()
        myButton.addTarget(
            self,
            action: #selector(ViewController.toDiary),
            forControlEvents:.TouchUpInside ) ;        self.view.addSubview(myButton)

        
        
    }

    func toDiary(){
        self.navigationController!.pushViewController(
            myDairyViewController(), animated: true)
    }
    func check(){
    print("check button action")
    }
    func setting(){
        self.navigationController!.pushViewController(
            settingViewController(), animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

