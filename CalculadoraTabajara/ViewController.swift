//
//  ViewController.swift
//  CalculadoraTabajara
//
//  Created by Tone Panetone on 09/08/16.
//  Copyright © 2016 baraodemaua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayText: UILabel!
    
    var items = [Double]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    var isUserTyping = false
    
    var displayValue: Double {
        get{
            return NSNumberFormatter().numberFromString(displayText.text!)!.doubleValue
        }
        set {
            displayText.text = "\(newValue)"
        }
    }
    
    var operands = [Double]()
    
    @IBAction func appendDigit(sender: UIButton) {
        
        let digit = sender.currentTitle!

        if digit == "." && Int(displayText.text!) == nil {
            return
        }
        
        if isUserTyping {
            if digit == "." {
                displayText.text! += "."
            } else {
                displayText.text! += digit
            }
        } else {
            if digit == "." {
                displayText.text = "0."
            } else {
                displayText.text = digit
            }
            isUserTyping = true
            
        }
        
    }
    
    @IBAction func enter() {
        
    }
    
    
    @IBAction func reset() {
        operands.removeAll()
        isUserTyping = false
        displayValue = 0.0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

