//
//  BMIViewController.swift
//  BMI Calculator
//
//  Created by Roy Akash on 05/12/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class BMIViewController: UIViewController {
    
    var bmiValue: String?
    var bmiflt: Float?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        if bmiflt! <= Float(16){
            bmiLabel.textColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            descriptionLabel.text = "You are Very Severely Underweight"
        }else if bmiflt! <= Float(16.9) && bmiflt! > Float(16){
            bmiLabel.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            descriptionLabel.text = "You are Severely Underweight"
        }else if bmiflt! <= Float(18.4) && bmiflt! > Float(17){
            bmiLabel.textColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
            descriptionLabel.text = "You are Underweight"
        }else if bmiflt! <= Float(26) && bmiflt! > Float(18.5){
            bmiLabel.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
            descriptionLabel.text = "Your BMI is Normal"
        }else if bmiflt! <= Float(29.9) && bmiflt! > Float(26.1){
            bmiLabel.textColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
            descriptionLabel.text = "You are Overweight"
        }else if bmiflt! <= Float(34.9) && bmiflt! > Float(30){
            bmiLabel.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            descriptionLabel.text = "You are Obese Class I"
        }else if bmiflt! <= Float(39.9) && bmiflt! > Float(35){
            bmiLabel.textColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
            descriptionLabel.text = "You are Obese Class II"
        }else if bmiflt! >= Float(40){
            bmiLabel.textColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
            descriptionLabel.text = "You are Obese Class III"
        }
    }
    
    @IBAction func reCalculate(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
        let hapticGenerator = UIImpactFeedbackGenerator(style: .rigid)
        hapticGenerator.impactOccurred()
        
    }
}
