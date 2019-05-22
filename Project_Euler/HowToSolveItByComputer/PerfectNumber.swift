//
//  PerfectNumber.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/15/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct PerfectNumber {
    
    static func isPerfectNumber(number: Int) -> Bool {
        let factors = allDivisors(ofNumber: number)
        var sum = 0
        for eachDivisor in factors {
            sum += eachDivisor
        }
        if sum == number {
            return true
        }
        return false
    }

    static func findPerfectNumbersWithin(range: Int) -> [Int] {
        var perfects = [Int]()
        for eachNo in 1...range {
            if isPerfectNumber(number: eachNo) {
                perfects.append(eachNo)
            }
        }
        return perfects
    }
    
    static func allDivisors(ofNumber number: Int) -> [Int] {
        if number == 1 || number == 2 || number == 3 {
            return [1]
        }
        var factors = [Int]()
        let sqrtNo = Int(sqrt(Double(number)).rounded(.up))
        for eachNo in 2...sqrtNo {
            if number % eachNo == 0 {
                if !factors.contains(eachNo) {
                    factors.append(eachNo)
                }
                let nextDivisor = number/eachNo
                if !factors.contains(nextDivisor) && number != nextDivisor {
                    factors.append(nextDivisor)
                }
            }
        }
        factors.append(1)
        return factors
    }
}
