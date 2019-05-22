//
//  SquareRoot.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/8/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct SquareRoot {
    var timeComplexity = TimeComplexity()

    func sqroot(number: Int) -> Int {
        var sqr = number / 2
        var gotSqrt = false
        while gotSqrt == false {
            let originalNumber = sqr * sqr
            if originalNumber > number {
                sqr -= 1
            } else if originalNumber < number {
                sqr += 1
            } else {
                gotSqrt = true
            }
        }
        return sqr
    }
    
    
    func sqrootOpti(number: Int) -> Int {
        let sqr = number / 2
        var arr = Array(1...sqr)
        let index = binarySearch(number: number, arr: &arr)
        if index == -1 {
            print("Not able to find")
            return -1
        }
        return arr[index]
    }
    
    func binarySearch(number: Int, arr: inout [Int]) -> Int {
        var upperLimit = arr.count - 1
        var lowerLimit = 0
        while upperLimit >= lowerLimit {
            let middleIndex = (lowerLimit + upperLimit) / 2
            let valueAtIndex = arr[middleIndex]
            let expectedValue = valueAtIndex * valueAtIndex
            if expectedValue == number {
                return middleIndex
            }
            if expectedValue > number {
                upperLimit = middleIndex - 1
            } else if expectedValue < number {
                lowerLimit = middleIndex + 1
            }
        }
        return -1
    }
    
    func squareRoot(number: Double) -> Double {
        var sqroot = 0.0
        var g1 = 0.0
        var g2 = number / 2
        let error = 0.0001
        repeat {
            g1 = g2
            g2 = (g1 + number / g1) / 2
        } while abs(g1 - g2) > error
        sqroot = g2
        return sqroot
    }
    
    func squareRoot2(number: Double) -> Double {
        var n = number / 2
        var lastN = 0.0
        let error = 0.0001
        repeat {
            lastN = n
            n = ((number / lastN) + lastN) / 2
        } while abs(lastN - n) > error
        return n
    }
    
    func sqr(number: Double) -> Double {
        return sqrt(number)
    }
}
