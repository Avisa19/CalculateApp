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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        //What should happen when non-number button pressed
        
        isFinishedTypingNumber = true
        
    }
    
    
    
    
    
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //what should happen when a number is entered into keypad
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber  {
                
                displayLabel.text = numValue
                isFinishedTypingNumber = false
                
            } else {
                
                displayLabel.text = displayLabel.text! + numValue
            
            }
            
        }
        
    }
    
    
    
    
    
    
    
}

