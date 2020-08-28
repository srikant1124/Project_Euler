//
//  ModifiedKaprekarNumbers.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/9/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ModifiedKaprekarNumbers {
    
    func kaprekarNumbers(p: Int, q: Int) -> [Int] {
        var isExist = false
        var results = [Int]()
        for eachNo in (p...q) {
            let square = eachNo * eachNo
            var digits = 0
            var number = eachNo
            while number != 0 {
                number = number / 10
                digits += 1
            }
            var sqrNo = square
            var leftNum = 0
            var rightNum = 0
            var powCounter = 0
            while sqrNo != 0 {
                let rem = sqrNo % 10
                sqrNo = sqrNo / 10
                if digits > 0 {
                    rightNum += rem * Int(truncating: NSDecimalNumber(decimal: pow(10, powCounter)))
                    digits -= 1
                    powCounter += 1
                    if digits == 0 {
                        powCounter = 0
                    }
                } else {
                    leftNum += rem * Int(truncating: NSDecimalNumber(decimal: pow(10, powCounter)))
                    powCounter += 1
                }
            }
            if leftNum + rightNum == eachNo {
                isExist = true
                print("\(eachNo)", separator: "", terminator: " ")
                results.append(eachNo)
            }
        }
        if !isExist {
            print("INVALID RANGE")
        }
        return results
    }
}
