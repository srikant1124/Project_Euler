//
//  PrimeNumbers.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/14/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

class PrimeNumbers {
    var timeComplexity = TimeComplexity()
    static func findNthPrimeNumber(nth: Int) -> Int {
        var counter = 0
        var nthPrimeNumber = 0
        var eachNo = 1
        while counter != nth {
            if PrimeNumbers.isPrime(number: eachNo) {
                nthPrimeNumber = eachNo
                counter += 1
            }
            eachNo += 1
        }
        return nthPrimeNumber
    }
    
    
    /// - Find Sum of 'n' Prime numbers
    /// - Parameter arrSize: size if Number
    /// - Returns: Sum of all prime numbers.
    /// - https://www.youtube.com/watch?v=eKp56OLhoQs
    /// - Time complexity :  0.4813690185546875
    /// - SIEVE OF ERATOSTHENES Methods to Find N Prime Numbers
   static func findSumOfPrimeNumbers(valueOfN: Int) -> Int {
        var primeNumbers = findNPrimeNumbers(arrSize: valueOfN)
        let sum = PrimeNumbers.sumOfPrimeNumbers(primeNos: &primeNumbers)
        return sum
    }
    
   static func findNPrimeNumbers(arrSize: Int) -> [Bool] {
        var primeArray = [Bool](repeating: true, count: arrSize)
        primeArray[0]  = false
        primeArray[1]  = false
        let arrCountInFloat = Float(integerLiteral: Int64(arrSize))
        let sqrtOfArrCount = Int(sqrt(arrCountInFloat))
        for prime in 2...sqrtOfArrCount {
            if primeArray[prime] == true {
                for primeIndex in 2...primeArray.count {
                    if prime*primeIndex < primeArray.count {
                        primeArray[prime*primeIndex] = false
                    } else {
                        break
                    }
                }
            }
        }
        return primeArray
    }
    
   static func sumOfPrimeNumbers(primeNos: inout [Bool]) -> Int {
        var sum = 0
        for index in 0..<primeNos.count {
            if primeNos[index] == true {
                sum += index
            }
        }
        return sum
    }
    
    static func isPrime(number: Int) -> Bool {
        let valueInFloat = Float(number)
        let sqrootOfValue = Int(sqrt(valueInFloat))
        if number == 0 || number == 1 {
            return false
        }
        if number == 2 || number == 3 {
            return true
        }
        for eachNo in 2...sqrootOfValue {
            if number % eachNo == 0 {
                return false
            }
        }
        return true
    }
    
   static func findSumOfPrimeNumbersOptimized(valueOfN: Int) -> Int {
        var primeNumbers = findPrimeNumbersWithin(range: valueOfN)
        let sum = sumOfPrimeNumbers(primeNos: &primeNumbers)
        return sum
    }
    
   static func findPrimeNumbersWithin(range: Int) -> [Bool] {
        var primeArray = [Bool](repeating: true, count: range)
        primeArray[0]  = false
        primeArray[1]  = false
        let arrCountInFloat = Float(integerLiteral: Int64(range))
        let sqrtOfArrCount = Int(sqrt(arrCountInFloat))
        for prime in 2...sqrtOfArrCount {
            if primeArray[prime] == true {
                for primeIndex in 2...primeArray.count {
                    if prime*primeIndex < primeArray.count {
                        if primeArray[prime*primeIndex] == true { // This line only is the difference
                            primeArray[prime*primeIndex] = false
                        }
                    } else {
                        break
                    }
                }
            }
        }
        return primeArray
    }
    
    static func bruteForceFindSumOfPrimeNumbersWithin(nValue: Int) -> Int {
        var sum = 0
        for num in 2..<nValue {
            if isPrime(number: num) {
                sum += num
            }
        }
        return sum
    }
    
    #warning("Develop Logic to find sum of 1ST 1000 prime numbers")
    
    static func primeFactorisation(number: Int) -> [Int] {
        var factors = [Int]()
        if number <= 1 {
            return factors
        }
        if PrimeNumbers.isPrime(number: number) {
            return [number]
        }
        var num = number
        let sqrOfNum = Int(sqrt(Double(number)).rounded(.up))
        for eachNumber in 2...sqrOfNum where PrimeNumbers.isPrime(number: eachNumber) {
            if num > 1 {
                while num % eachNumber == 0 {
                    factors.append(eachNumber)
                    num = num / eachNumber
                    if isPrime(number: num) {
                        factors.append(num)
                        return factors
                    }
                }
            } else {
                print(number)
                break
            }
        }
        return factors
    }
}
