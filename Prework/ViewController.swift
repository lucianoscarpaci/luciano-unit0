//
//  ViewController.swift
//  Prework
//
//  Created by sierra on 8/27/22.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        //Get total by multiplying tip * displayTipPercentage
        let displayTipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * displayTipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

