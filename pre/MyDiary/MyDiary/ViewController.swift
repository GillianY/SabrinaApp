//
//  ViewController.swift
//  MyDiary
//
//  Created by ucom Apple 13 on 2016/11/25.
//  Copyright © 2016年 GinaY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainDraries: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func segmentsChanged(_ sender: UISegmentedControl) {
        NSLog("# of Segments = \(sender.numberOfSegments)")
        
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

