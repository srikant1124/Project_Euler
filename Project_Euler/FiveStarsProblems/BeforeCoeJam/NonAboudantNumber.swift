//
//  NonAboudantNumber.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 1/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

class NonAboudantNumber {
    var allAboudantNos: [Int] = []
    var allAboudantNosDict: [Int: Int] = [:]
    let firstValidNumber = 24
    
    func findAllAboudantNumbers(endNumber: Int) {
        for eachNo in 1..<endNumber {
            if findSumOfDivisors(number: eachNo) > eachNo {
                allAboudantNos.append(eachNo)
                allAboudantNosDict[eachNo] = eachNo
            }
        }
    }
    
    func findSumOfDivisors(number: Int) -> Int {
        var sum = 0
        let sqrtOfno = sqrt(Double(number))
        let intOfSqr = Int(sqrtOfno)
        for eachNo in 1...intOfSqr {
            if number % eachNo == 0 {
                let d1 = eachNo
                let d2 = number / eachNo
                if d1 != d2 {
                    print("d1 = \(d1), d2 = \(d2)")
                } else {
                    print("d1 = \(d1)")
                }
                sum += d1 != d2 ? d1 + d2 : d1
            }
        }
        sum -= number
        return sum
    }
    
    func findSumOfAllNosCantBeExpressedAsSumOfTwoAboudantNosInRange(number: Int) -> Int {
        let start = CFAbsoluteTimeGetCurrent()
        findAllAboudantNumbers(endNumber: number)
        let diff = CFAbsoluteTimeGetCurrent() - start
        print("Took - 1: \(diff) seconds")

        var sum = 0
        for eachInt in 1..<number {
            if !isSumOfTwoAboudants(givenNo: eachInt) {
                sum += eachInt
            }
        }
        return sum
    }
    
    func isSumOfTwoAboudants(givenNo: Int) -> Bool {
        var result = false
        if givenNo > firstValidNumber - 1 {
            for eachAboudant in allAboudantNos {
                let nextAboudant = givenNo - eachAboudant
                if nextAboudant > allAboudantNos[0] - 1,
                    allAboudantNosDict[nextAboudant] != nil {
                    result = true
                    break
                }
                if nextAboudant < allAboudantNos[0] - 1 {
                    break
                }
            }
        }
        return result
    }

}
