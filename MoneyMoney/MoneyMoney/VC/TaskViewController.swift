//
//  ViewController.swift
//  MoneyMoney
//
//  Created by SSY on 2018. 5. 14..
//  Copyright © 2018년 LittleMe. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var todayContainerView: UIView!
    @IBOutlet weak var StatisticsContainerView: UIView!
    
    @IBAction func didChangedIndex(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            self.todayContainerView.isHidden = false
            self.StatisticsContainerView.isHidden = true
        case 1:
            self.todayContainerView.isHidden = true
            self.StatisticsContainerView.isHidden = false
        default:
            break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

