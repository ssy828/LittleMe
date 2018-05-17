//
//  ViewController.swift
//  MoneyMoney
//
//  Created by SSY on 2018. 5. 14..
//  Copyright © 2018년 LittleMe. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    // MARK: - properties
    
    // MARK: - IBOutlet
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    
    // MARK: - IBAction
    @IBAction func didChangedIndex(_ sender: UISegmentedControl) {
        //        switch segmentedControl.selectedSegmentIndex {
        //        case 0:
        //
        //        case 1:
        //
        //        default:
        //            break
        //        }
    }
    
    // MARK: - Methods
    // addViewController
    private func addViewCotnroller(asChild viewController: UIViewController) {
        // 1. add Child ViewController
        addChildViewController(viewController)
        // 2. add Child View
        self.containerView.addSubview(viewController.view)
        // 3. Constraints
        viewController.view.frame = self.containerView.bounds
        // 4. notify Child ViewController of Container View
        viewController.didMove(toParentViewController: self)
    }
    // MARK: removeViewController
    private func removeViewController(asChild viewController: UIViewController) {
        // 1.notified of child ViewController
        viewController.willMove(toParentViewController: nil)
        // 2. remove child ViewController& Constraints from Root View
        viewController.view.removeFromSuperview()
        // 3. notify Child ViewController of Container View
        viewController.removeFromParentViewController()
    }
    
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

