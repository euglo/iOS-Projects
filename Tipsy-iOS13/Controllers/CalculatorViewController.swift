//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    var tip = 0.1
    var split = 2
    var billAmount = 0.0
    var billAmountFormatted = "0.0"
    

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        let buttonTitle = sender.currentTitle!
        
        let tipString = String(buttonTitle.dropLast())
        
        tip = Double(tipString)!
        tip /= 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        split = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billAmountStr = billTextField.text!
        
        if billAmountStr != "" {
            billAmount = Double(billAmountStr)!
            
            let billAmountPerPerson = billAmount * (1 + tip) / Double(split)
            billAmountFormatted = String(format: "%.2f", billAmountPerPerson)
            
            print(billAmountFormatted)
        }
        
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = billAmountFormatted
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = split
        }
    }
}

