//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Code Nation on 31/03/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

// We Created this class from scratch...

// Frameworks
import UIKit        // Includes everything in Foundation, its a level higher

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ***********************************************
        // * Create a label without using Object Library
        // ***********************************************
        
        view.backgroundColor = .red     // expecting a UIColor so not required
        
        let label = UILabel()   // In UIKit there is a UILabel
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        
    }
    
}
