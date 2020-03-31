//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
//        print(sender.value)
//        print(String(format: "%.2f", sender.value))     // 2 Decimal Places
        let height = String(format: "%.2f", sender.value)
        
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
//        print(sender.value)
//        print(Int(sender.value))      // 0 Decimal Places
//        print(String(format: "%.0f", sender.value))     // 0 Decimal Places
        let weight = String(format: "%.0f", sender.value)
        
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
//        let bmi = weight / (height * height)
        let bmi = weight / pow(height, 2)       // height, to the power of 2
        
//        print(bmi)
        
        // ******************************************************
        // * Initialise SecondViewController we manually created
        // ******************************************************
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//        self.present(secondVC, animated: true, completion: nil)
        
        // ******************************************************
        
        
        
    }
    
}

