//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Roy Akash on 05/12/19.
//

import Foundation

struct Calculatorbrain {
    
    var bmi: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) -> Float{
        bmi = weight / (height*height)
        return bmi
    }
    
    func getBMIValue() -> String{
        return String(format:"%.2f", bmi)
    }
}
