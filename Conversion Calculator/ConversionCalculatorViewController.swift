//
//  ConversionCalculatorViewController.swift
//  Conversion Calculator
//
//  Created by Grant Harrison on 10/30/19.
//  Copyright © 2019 Grant Harrison. All rights reserved.
//

import UIKit

class ConversionCalculatorViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    var conversionArray: [Conversions] = [Conversions(label: "Fahrenheit to Celcius", inputUnit: "°F", outputUnit: "°C"), Conversions(label: "Celcius to Fahrenheit", inputUnit: "°C", outputUnit: "°F"), Conversions(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"), Conversions(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputDisplay.text = conversionArray[0].outputUnit
        inputDisplay.text = conversionArray[0].inputUnit

        // Do any additional setup after loading the view.
    }
    
    @IBAction func convert(_ sender: AnyObject) {
        let alert = UIAlertController(title: "", message: "Choose Converter", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: conversionArray[0].label, style: UIAlertAction.Style.default, handler: { (alertAction) -> Void in
            self.outputDisplay.text = self.conversionArray[0].outputUnit
            self.inputDisplay.text = self.conversionArray[0].inputUnit
        }))
        alert.addAction(UIAlertAction(title: conversionArray[1].label, style: UIAlertAction.Style.default, handler: { (alertAction) -> Void in
            self.outputDisplay.text = self.conversionArray[1].outputUnit
            self.inputDisplay.text = self.conversionArray[1].inputUnit
        }))
        alert.addAction(UIAlertAction(title: conversionArray[2].label, style: UIAlertAction.Style.default, handler: { (alertAction) -> Void in
            self.outputDisplay.text = self.conversionArray[2].outputUnit
            self.inputDisplay.text = self.conversionArray[2].inputUnit
        }))
        alert.addAction(UIAlertAction(title: conversionArray[3].label, style: UIAlertAction.Style.default, handler: { (alertAction) -> Void in
            self.outputDisplay.text = self.conversionArray[3].outputUnit
            self.inputDisplay.text = self.conversionArray[3].inputUnit
        }))
        self.present(alert, animated: true, completion: nil)
    
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
