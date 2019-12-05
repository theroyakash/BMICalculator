//
//  ViewController.swift
//  BMI Calculator
//
//  Created by theroyakash on 21/08/2019.

import UIKit

class CalculateViewController: UIViewController {
        
    var calculatorBrain = Calculatorbrain()
    var bmiFloat: Float = 0.0
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightSlider.value = 1.73
        weightSlider.value = 66
        heightLabel.text = String("\(heightSlider.value) Meter(s)")
        weightLabel.text = String("\(weightSlider.value) Kg(s)")
    }
        
    @IBAction func heightSliderChanged(_ sender: UISlider){
        sender.minimumValue = 0.4
        sender.maximumValue = 3
        let value = sender.value
        heightLabel.text = String(format:"%.2f Meter(s)", value)
    }
    
    @IBAction func weightsliderChanged(_ sender: UISlider){
        sender.minimumValue = 8
        sender.maximumValue = 200
        let value = sender.value
        weightLabel.text = String(format:"%.0f Kg(s)", value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton){
        let weight = weightSlider.value
        let height = heightSlider.value
        
        bmiFloat = calculatorBrain.calculateBMI(height: height, weight: weight)
        
        // System Haptics
        
        let hapticGenerator = UINotificationFeedbackGenerator()
        hapticGenerator.notificationOccurred(.success)
        
        self.performSegue(withIdentifier: "calculationSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calculationSegue"{
            let destinationVC = segue.destination as! BMIViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.bmiflt = bmiFloat
        }
    }

}

