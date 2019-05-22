//
//  LargePower.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/11/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct LargePower {
    var timeComplexity = TimeComplexity()
    
    func binaryOf(number: Int) {
        var num = number
        print("================\n")
        while num > 0 {
            let binaryDigit = num % 2
            print(binaryDigit)
            num = num / 2
        }
        print("\n================")
    }
    
    func optimizedPowerOf(number: Int, power: Int) -> Double {
        var product: Double = 1
        var pSequence = Double(number)
        var num = power
        while num > 0 {
            let rem = num % 2
            if rem == 1 {
                product = product * Double(pSequence)
            }
            pSequence = pSequence * pSequence
            num = num / 2
        }
        return product
    }
    
    func powerOf(number: Double, power: Int) -> Double {
        var pow: Double = 1
        for _ in 0..<power {
            pow *= number
        }
        return pow
    }
    
    func powOf(number: Double, power: Double) -> Double {
        return pow(number, power)
    }
    
}
