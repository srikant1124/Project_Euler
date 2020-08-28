//
//  ACNumber.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 1/28/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

class AmicableNumbers {
    func sumOfAllAmicableNumbers() {
        var sum = 0
        for index in 1...10000 {
            if isAcNumber(number: index) {
                sum += index
            }
        }
        print(sum)
    }
    
    func isAcNumber(number: Int) -> Bool {
        var result = false
        let sum1 = findSumOfDivisors(number: number)
        let sum2 = findSumOfDivisors(number: sum1)
        if number == sum2 && sum1 != sum2 {
            result = true
        }
        return result
    }
    
    func findSumOfDivisors(number: Int) -> Int {
        var sum = 0
        let sqrtOfno = sqrt(Double(number))
        let intOfSqr = Int(sqrtOfno)
        for eachNo in 1...intOfSqr {
            if number % eachNo == 0 {
                let d1 = eachNo
                let d2 = number / eachNo
                sum += d1 + d2
            }
        }
        sum -= number
        return sum
    }
}
