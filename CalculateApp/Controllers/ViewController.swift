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
    
  
    
    

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        //What should happen when non-number button pressed
        
        isFinishedTypingNumber = true
        
        guard let number = Double(displayLabel.text!) else { fatalError("Cannot convert display label text to double.") }
        
        if let calcMethod = sender.currentTitle {
            
            
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
                    guard let currentDisplayValue = Double(displayLabel.text!) else { fatalError("Cannot convert display label text to double.") }
                    
                    let isInt = floor(currentDisplayValue) == currentDisplayValue
                    
                    if !isInt {
                        return
                    }
                }
                
                displayLabel.text = displayLabel.text! + numValue
            
            }
            
        }
        
    }
    
    
    
    
    
    
    
}

