//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Code Nation on 31/03/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
//        let bmiToOneDecimalPlace = String(format: "%.1f", bmi)
//        return bmiToOneDecimalPlace
        
        // ***************************************
        // * v1.0 for Optional - optional binding
        // ***************************************
//        if let safeBMI = bmi {
//            let bmiToOneDecimalPlace = String(format: "%.1f", safeBMI)
//            return bmiToOneDecimalPlace
//        } else {
//            return "0.0"
//        }
        
        // *************************************
        // * v2.0 for Optional - nil coalescing
        // *************************************
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight - Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal Weight - Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "OverWeight - Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
   
}
