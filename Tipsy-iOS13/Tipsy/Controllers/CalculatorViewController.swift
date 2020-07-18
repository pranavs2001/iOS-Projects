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
    
    var tip: Float = 0.1
    var numOfPeople: Int = 2
    var totalVal: Double = 0.0
    
    override func viewDidLoad() {
        
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        view.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        //let tip: Float
        
        if(sender.currentTitle == "0%"){
            tip = 0.0
        }
        else if(sender.currentTitle == "10%"){
            tip = 0.1
        }
        else{
            tip = 0.2
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        view.endEditing(true)
        
        numOfPeople = Int(sender.value)
        
        splitNumberLabel.text = String(numOfPeople)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        view.endEditing(true)
        
        let total = billTextField.text!
        
        if(total != ""){
            totalVal = Double(total)!
            
            totalVal *= Double(1 + tip)
            
            totalVal /= Double(splitNumberLabel.text!) ?? 0.0
            
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.tip = tip
            destinationVC.people = numOfPeople
            destinationVC.total = totalVal
        }
        
    }
}

