//
//  LargePower.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/14/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct LargePowerPE {
    func findSumOfDigitsAfterFindThePower(number: Double, power: Double) -> Int {
        let originalNumber = pow(number, power)
        var number1 = originalNumber
        var sum = 0
        let num = "1267650600228229401496703205376"
        var inString = ""
        while number1 > 0.01 {
            let remainder = number1.truncatingRemainder(dividingBy: 10)
            let intRemainder = Int(remainder)
            print(intRemainder)
            inString = "\(intRemainder)" + inString
            sum += intRemainder
            number1 = number1 / 10
        }
        print(inString)
        return sum
    }
    
    func getAnswer() -> Int {
        var list = "10715086071862673209484250490600018105614048117055336074437503883703510511249361224931983788156958581275946729175531468251871452856923140435984577574698574803934567774824230985421074605062371141877954182153046474983581941267398767559165543946077062914571196477686542167660429831652624386837205668069376"
        let result = list.compactMap{ $0.wholeNumberValue }
        var sum = 0
        for item in result {
            sum += item
        }
        return sum
    }
}
