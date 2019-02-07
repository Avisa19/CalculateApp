//
//  ViewController.swift
//  CalculateApp
//
//  Created by Avisa on 7/2/19.
//  Copyright © 2019 Avisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    private var isFinishedTypingNumber : Bool = true
    private var dispalyValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else { fatalError("Cannot convert display label text to double.") }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
  
    
    

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        //What should happen when non-number button pressed
        
        isFinishedTypingNumber = true
        
       
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(dispalyValue * -1)
            } else if calcMethod == "AC" {
                displayLabel.text = "0"
            } else if calcMethod == "%" {
                displayLabel.text = String(dispalyValue / 100)
            }
            
        }
        
    }
    
    
    
    
    
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //what should happen when a number is entered into keypad
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber  {
                
                displayLabel.text = numValue
                isFinishedTypingNumber = false
                
            } else {
                if numValue == "." {
                    
                    let isInt = floor(dispalyValue) == dispalyValue
                    
                    if !isInt {
                        return
                    }
                }
                
                displayLabel.text = displayLabel.text! + numValue
            
            }
            
        }
        
    }
    
    
    
    
    
    
    
}

