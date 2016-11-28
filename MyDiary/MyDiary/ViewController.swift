//
//  ViewController.swift
//  MyDiary
//
//  Created by Gillian on 2016/11/28.
//  Copyright © 2016年 Gillian_studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func segmentSelected(sender: UISegmentedControl) {
        switch segmentSegue.selectedSegmentIndex {
        case 0:
            performSegueWithIdentifier("FirstSegue", sender: self)
        case 1:
            //DiaryItemSegue
            //CalenadarView
            performSegueWithIdentifier("SecondSegue", sender: self)
        case 2:
                performSegueWithIdentifier("SecondSegue", sender: self)
            
        default:
            println("You shouldn't be here")
        }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var segTabs: UISegmentedControl!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func segTabChangeHandler(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0: //entry
            print("first segement clicked\n")
        case 1: //calendar
            print("second segment clicked\n")
        case 2: //Diary
            print("third segemnet clicked\n")
        default:
            break;
        }  //Switch
        
        NSLog("test");

    }


}

