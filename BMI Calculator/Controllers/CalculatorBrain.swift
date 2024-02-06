//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Riyan Pahuja on 3/2/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
//    var bmiValue = "0.0"
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
//        bmiValue = String(format: "%.1f", bmi)
        if(bmiValue < 18.9){
            bmi = BMI(BMIValue: String(format: "%.1f", bmiValue), advice: "Eat More Pies!", color: UIColor.blue)
        } else if (bmiValue < 24.9){
            bmi = BMI(BMIValue: String(format: "%.1f", bmiValue), advice: "Fit As A Fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(BMIValue: String(format: "%.1f", bmiValue), advice: "Eat Less Pies!", color: UIColor.red)
        }
        
    }
    
    func getBMIValue() -> String {
        return bmi?.BMIValue ?? "0.0"
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Eat More Snacks!!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
}
