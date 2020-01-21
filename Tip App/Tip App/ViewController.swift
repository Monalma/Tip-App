//
//  ViewController.swift
//  Tip App
//
//  Created by Monal on 20/01/2020.
//  Copyright © 2020 Monal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalTip: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f" , tip)
        totalTip.text = String(format: "$%.2f" , total)
    }
}

