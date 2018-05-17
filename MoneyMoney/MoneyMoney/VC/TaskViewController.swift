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
    lazy var todayVC: TodayViewController = {
        // 1. Load storyboard
        let storyboard = UIStoryboard(name: "Today", bundle: Bundle.main)
        // 2. Instantiate View Controller
        let todayViewController = storyboard.instantiateViewController(withIdentifier: "TodayViewController") as! TodayViewController
        // 3. Add Child ViewController to ViewController
        self.addViewCotnroller(asChild: todayViewController)
        return todayViewController
    }()
    
    lazy var statisticsVC: StatisticsViewController = {
        // 1. Load storyboard
        let storyboard = UIStoryboard(name: "Statistics", bundle: Bundle.main)
        // 2. Instantiate View Controller
        let statisticsViewController = storyboard.instantiateViewController(withIdentifier: "StatisticsViewController") as! StatisticsViewController
        // 3. Add Child ViewController to ViewController
        self.addViewCotnroller(asChild: statisticsViewController)
        return statisticsViewController
    }()
    
    
    // MARK: - IBOutlet
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    
    // MARK: - IBAction
    @IBAction func didChangedIndex(_ sender: UISegmentedControl) { updateView() }
    
    // MARK: - Methods
    // addViewController
    private func addViewCotnroller(asChild viewController: UIViewController) {
        // 1. add Child ViewController
        addChildViewController(viewController)
        // 2. add Child View
        self.containerView.addSubview(viewController.view)
        // 3. Configure Child View
        viewController.view.frame = self.containerView.bounds
        viewController.view.autoresizingMask = [.flexibleHeight,.flexibleWidth]
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
    
    func updateView() {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            removeViewController(asChild: statisticsVC)
            addViewCotnroller(asChild: todayVC)
        case 1:
            removeViewController(asChild: todayVC)
            addViewCotnroller(asChild: statisticsVC)
        default:
            break
        }
    }
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
}

