//
//  GCD.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/10/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct GCD {
    func gcd(numberA: Int, numberB: Int) -> Int {
        var remainder = 1
        var quotient = numberB
        var divisor = numberA
        if divisor > quotient {
           swap(valueA: &divisor, valueB: &quotient)
        }
        while remainder != 0 {
            remainder = quotient % divisor
            quotient = divisor
            divisor = remainder
        }
        return quotient
    }
    
    func swap<T>(valueA: inout T, valueB: inout T) {
        let temp = valueA
        valueA = valueB
        valueB = temp
    }
}
