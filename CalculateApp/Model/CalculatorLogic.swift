//
//  CalculatorLogic.swift
//  CalculateApp
//
//  Created by Avisa on 8/2/19.
//  Copyright © 2019 Avisa. All rights reserved.
//

import Foundation


struct CalculatorLogic {
    // Always consider Access level for instances,
    
    private var number: Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    // because it should be private which is important , under function we should pass the value.
    mutating func setNumber(_ number: Double) {
        
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n * 0.01
            case "=":
                return performTwoNumCalculation(n2: n)
            default:
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }

        }
        return nil
    }
    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1, let operation = intermediateCalculation?.calcMethod {
            switch operation {
            case "➕":
                return n1 + n2
            case "➖":
                return n1 - n2
            case "✖️":
                return n1 * n2
            case "➗":
                return n1 / n2
            default:
                fatalError("The opeation passed in does not match any of cases.")
            }
        }
        
        return nil
    }
        
}

//Access level
//Structs and Classes
// Tupels
