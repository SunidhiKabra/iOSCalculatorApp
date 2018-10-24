//
//  ViewController.swift
//  InClass02a
//
//  Created by Kabra, Sunidhi on 10/23/18.
//  Copyright © 2018 Kabra, Sunidhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberEditText: UITextField!
    @IBOutlet weak var secondNumberEdittext: UITextField!
    
    @IBOutlet weak var resultLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showToast(controller: UIViewController, message : String, seconds: Double) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.view.backgroundColor = UIColor.black
        alert.view.alpha = 0.6
        alert.view.layer.cornerRadius = 15
        
        controller.present(alert, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
            alert.dismiss(animated: true)
        }
    }

    @IBAction func onClickClearAllButton(_ sender: Any) {
        print("textfields cleared")
        firstNumberEditText.text = ""
        secondNumberEdittext.text = ""
    }
    
    @IBAction func onClickButtonAdd(_ sender: Any) {
        let number1: Double? = Double(firstNumberEditText.text!)
        let number2: Double? = Double(secondNumberEdittext.text!)
        
        if(number1 != nil) && (number2 != nil){
            var number3 = number1! + number2!;
            resultLabel.text = "Result : \(number3)"
        }
        else{
            showToast(controller: self, message: "invalid value", seconds: 2.0)
        }
//        let number1 = (firstNumberEditText.text as! NSString).doubleValue
//        let number2 = (secondNumberEdittext.text as! NSString).doubleValue
//        print("number1 = \(number1) and number2 = \(number2)")
//
//        let number3 = number1 + number2;
//        resultLabel.text = "Result : \(number3)"
    }
    
    @IBAction func onClickButtonSubstract(_ sender: Any) {
        let number1: Double? = Double(firstNumberEditText.text!)
        let number2: Double? = Double(secondNumberEdittext.text!)
        
        if(number1 != nil) && (number2 != nil) && (number1! > number2!) {
            var number3 = number1! - number2!;
            resultLabel.text = "Result : \(number3)"
        }
        else{
            showToast(controller: self, message: "invalid value", seconds: 2.0)
        }
    }
    
    @IBAction func onClickButtonMultiply(_ sender: Any) {
        let number1: Double? = Double(firstNumberEditText.text!)
        let number2: Double? = Double(secondNumberEdittext.text!)
        
        if(number1 != nil) && (number2 != nil){
            var number3 = number1! * number2!;
            resultLabel.text = "Result : \(number3)"
        }
        else{
            showToast(controller: self, message: "invalid value", seconds: 2.0)
        }
    }
    
    @IBAction func onClickButtonDivide(_ sender: Any) {
        let number1: Double? = Double(firstNumberEditText.text!)
        let number2: Double? = Double(secondNumberEdittext.text!)
        
        if(number1 != nil) && (number2 != nil) && (number2 != 0){
            var number3 = number1! / number2!;
            resultLabel.text = "Result : \(number3)"
        }
        else{
            showToast(controller: self, message: "invalid value", seconds: 2.0)
        }
    }
}

