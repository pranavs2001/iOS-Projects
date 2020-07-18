//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Pranav Srinivasan on 6/21/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var tip: Float?
    var people: Int?
    var total: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tip! *= 100
        
        let displayTip = String(format: "%0.0f", tip!)
        
        totalLabel.text = String(format: "%0.2f", total ?? 0.0)
        
        settingsLabel.text = "Split between \(people ?? 0) people, with \(displayTip)% tip."
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil) 
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
