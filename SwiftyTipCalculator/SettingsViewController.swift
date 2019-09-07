//
//  SettingsViewController.swift
//  SwiftyTipCalculator
//
//  Created by Jonathan Abantao on 9/7/19.
//  Copyright © 2019 Jonathan Abantao. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    let TIP_PERCENTAGE = "TIP_PERCENTAGE"
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let tipValueIndex = defaults.integer(forKey: TIP_PERCENTAGE)
        
        tipControl.selectedSegmentIndex = tipValueIndex
    }

    @IBAction func onTap(_ sender: Any) {
        defaults.set(tipControl.selectedSegmentIndex, forKey: TIP_PERCENTAGE)
        
        defaults.synchronize()
    }
    
}
