//
//  DataModel.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 4/14/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

class DataModel {
    var input: Int!
    var outPut: Int!
    
    init(input: Int) {
        self.input = input
    }
    /// Find the Multiple of 3 and 5
    ///
    /// - Returns: Find Sum of All multiple of 3 and 5
    func findSummationOfMultiple(with inputOne: Int, inputTwo: Int) -> Int {
        var sum = 0
        for each in 1..<input {
            if (each % inputOne == 0) || (each % inputTwo == 0) {
                sum += each
            }
        }
        return sum
    }
    
    /// Find Sum of all even value in a Fibonaci Sequesnce
    ///
    /// - Returns: Sum
    func findSumOfEvenValuedFromFibbonaciSequency(withMaxTerm: Int) -> Int {
        var sum = 0
        var first = 1
        var second = 2
        var fibSeries = [Int]()
        while second < withMaxTerm && first < withMaxTerm {
            if !fibSeries.contains(first) {
                fibSeries.append(first)
            }
            if !fibSeries.contains(second) {
                fibSeries.append(second)
            }
            let temp = second
            second = first + temp
            first = temp
        }

        for each in fibSeries {
            if each % 2 == 0 {
                sum += each
            }
            print(each)
        }
        return sum
    }
    
    func primeFactorisationOf(number: Int) -> [Int] {
        var mult = [Int]()
        if number < 1 {
            return []
        }
        var num = number
        for eachNo in 2...number {
            if eachNo.isPrime() {
                if num > 1 {
                    if num % eachNo == 0 {
                        mult.append(eachNo)
                    }
                    num = reduceNumber(prime: eachNo, num: num)
                } else {
                    break
                }
            }
        }
        return mult
    }

    func reduceNumber(prime: Int, num: Int) -> Int {
        var number = num
        while number % prime == 0 && number > 0 {
            number = number / prime
        }
        return number
    }
    
    /// DescriptionFind the largest palindrome made from the product of two 3-digit numbers.
    ///
    /// - Returns: Return Largest palindrum Number
    func findLargestPalindrumNumber(digits: Int) -> Int {
        let largestNDigits = largest(nDigitsNum: digits)
        var largest = 0
        for eachNoFirst in (digits-1).findPowerOfTen()...largestNDigits {
            for eachNoSecond in (digits-1).findPowerOfTen()...largestNDigits {
                let result = eachNoFirst * eachNoSecond
                if result.reverse() == result && result > largest {
                    largest = result
                    print("\(eachNoFirst) and \(eachNoSecond)")
                }
            }
        }
        return largest
    }
    
    func largest(nDigitsNum: Int) -> Int {
        let largestNumber = nDigitsNum.findPowerOfTen() - 1
        return largestNumber
    }
}

extension Int {
    func isPrime() -> Bool {
        if self == 0 || self == 1 {
            return false
        }
        for index in 2..<self {
            if self % index == 0 {
                return false
            }
        }
        return true
    }
    
    func findPowerOfTen() -> Int {
        let power = Int(truncating: NSDecimalNumber(decimal: pow(10, self)))
        return power
    }
    
    func reverse() -> Int {
        var num = self
        var result = 0
        while num != 0 {
            result *= 10
            let rem = num % 10
            result += rem
            num = num / 10
        }
        return result
    }
}

