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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    
    @IBAction func appendDigit(sender: UIButton) {
        if (displayText.text == "\(0)"){
                displayText.text! = sender.titleLabel!.text!
        }
        else {
            displayText.text! += sender.titleLabel!.text!
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

