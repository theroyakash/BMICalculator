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
        if bmiflt! < Float(40){
            bmiLabel.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        }else{
            bmiLabel.textColor = .red
        }
    }
    
    @IBAction func reCalculate(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
        let hapticGenerator = UIImpactFeedbackGenerator(style: .rigid)
        hapticGenerator.impactOccurred()
        
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
