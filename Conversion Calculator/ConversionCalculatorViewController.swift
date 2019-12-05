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
    
    var inputLabel = UILabel(frame: CGRect(x: 0,y: 0,width: 50,height: 0))
    var outputLabel = UILabel(frame: CGRect(x: 0,y: 0,width: 50,height: 0))
    
    var inNum: Double = 0;
    //var outNum: Double = 0;
    
    let conversionArray: [Conversions] = [Conversions(label: "Fahrenheit to Celcius", inputUnit: "°F", outputUnit: "°C"), Conversions(label: "Celcius to Fahrenheit", inputUnit: "°C", outputUnit: "°F"), Conversions(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"), Conversions(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialIndex: Int = 0
    
        inputDisplay.text = ""
        outputDisplay.text = ""
        inputLabel.text = conversionArray[initialIndex].inputUnit
        inputLabel.font = UIFont.systemFont(ofSize: 40.0)
        outputLabel.text = conversionArray[initialIndex].outputUnit
        outputLabel.font = UIFont.systemFont(ofSize: 40.0)
        inputDisplay.rightView = inputLabel
        inputDisplay.rightViewMode = .always
        outputDisplay.rightView = outputLabel
        outputDisplay.rightViewMode = .always
    
//        outputDisplay.text = conversionArray[0].outputUnit
//        inputDisplay.text = conversionArray[0].inputUnit

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getConverter(_ sender: AnyObject) {
        let alert = UIAlertController(title:"" , message: "Choose Converter", preferredStyle:UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: conversionArray[0].label, style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
                self.inputLabel.text = self.conversionArray[0].inputUnit
                self.inputLabel.sizeToFit()
                self.outputLabel.text = self.conversionArray[0].outputUnit
                self.outputLabel.sizeToFit()
                if(self.inputDisplay.text != ""){
                    self.outputDisplay.text = String(format:"%.02f", (self.inNum-32)*5/9)
                }
            }))
            alert.addAction(UIAlertAction(title: conversionArray[1].label, style: UIAlertAction.Style.default, handler: {
                (alertAction) -> Void in
                self.inputLabel.text = self.conversionArray[1].inputUnit
                self.inputLabel.sizeToFit()
                self.outputLabel.text = self.conversionArray[1].outputUnit
                self.outputLabel.sizeToFit()
                if(self.inputDisplay.text != ""){
                    self.outputDisplay.text = String(format:"%.02f", self.inNum*9/5+32)
                }
            }))
        
            alert.addAction(UIAlertAction(title: conversionArray[2].label, style: UIAlertAction.Style.default, handler: {
                (alertAction) -> Void in
                self.inputLabel.text = self.conversionArray[2].inputUnit
                self.inputLabel.sizeToFit()
                self.outputLabel.text = self.conversionArray[2].outputUnit
                self.outputLabel.sizeToFit()
                if(self.inputDisplay.text != ""){
                    self.outputDisplay.text = String(format:"%.02f", self.inNum*1.60934)
                }
            }))
        
            alert.addAction(UIAlertAction(title: conversionArray[3].label, style: UIAlertAction.Style.default, handler: {
                (alertAction) -> Void in
                self.inputLabel.text = self.conversionArray[3].inputUnit
                self.inputLabel.sizeToFit()
                self.outputLabel.text = self.conversionArray[3].outputUnit
                self.outputLabel.sizeToFit()
                if(self.inputDisplay.text != ""){
                    self.outputDisplay.text = String(format:"%.02f", self.inNum*0.621371)
                }
            }))
            self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func getNumbers(_ sender: AnyObject) {
        inputDisplay.text = inputDisplay.text! + String(sender.tag)
        inNum = Double(inputDisplay.text!)!
        
        if( self.inputLabel.text == self.conversionArray[0].inputUnit){
            outputDisplay.text = String(format:"%.02f", (inNum-32)*5/9)
        } else if( self.inputLabel.text == self.conversionArray[1].inputUnit ){
            outputDisplay.text = String(format:"%.02f", inNum*9/5+32)
        } else if( self.inputLabel.text == self.conversionArray[2].inputUnit ){
            outputDisplay.text = String(format:"%.02f", inNum*1.60934)
        } else if( self.inputLabel.text == self.conversionArray[3].inputUnit ){
            outputDisplay.text = String(format:"%.02f", inNum*0.621371)
        }
    
    }
    
    @IBAction func makeClear(_ sender: Any) {
            inputDisplay.text = ""
            outputDisplay.text = ""
    }
    
        
    @IBAction func changeMinusOrPlus(_ sender: Any) {
        
        if(inputDisplay.text != ""){
            inNum = -inNum
            inputDisplay.text = String(inNum)
        }
        
        if( self.inputDisplay.text == self.conversionArray[0].inputUnit){
            outputDisplay.text = String(format:"%.02f", (inNum-32)*5/9)
        } else if( self.inputLabel.text == self.conversionArray[1].inputUnit ){
            outputDisplay.text = String(format:"%.02f", inNum*9/5+32)
        } else if( self.inputLabel.text == self.conversionArray[2].inputUnit ){
            outputDisplay.text = String(format:"%.02f", inNum*1.60934)
        } else if( self.inputLabel.text == self.conversionArray[3].inputUnit ){
            outputDisplay.text = String(format:"%.02f", inNum*0.621371)
        }
        
    }
    
    @IBAction func getDecimal(_ sender: Any) {
        
        if(inputDisplay.text != ""){
            inputDisplay.text = inputDisplay.text! + "."
        }
        
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
