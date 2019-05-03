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
    var timeComplexity = TimeComplexity()

    init(input: Int) {
        self.input = input
    }
    /// Find the Multiple of 3 and 5
    ///
    /// - Returns: Find Sum of All multiple of 3 and 5
    func findSummationOfMultiple(with inputOne: Int, inputTwo: Int) -> Int {
        var sum = 0
        for each in 1..<input {
            timeComplexity.firstLoop += 1
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
            timeComplexity.firstLoop += 1
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
        }
        return sum
    }
    
    @discardableResult
    func generateFibonacciSequence(number: Int) -> [Int] {
        var firstValue = 0
        var secondValue = 1
        var series = [firstValue, secondValue]
        for _ in 2..<number {
            let temp = secondValue
            secondValue = secondValue + firstValue
            firstValue = temp
            series.append(secondValue)
        }        
        return series
    }
    
    func generateFibonacciSequenceOptimized(number: Int) -> [Int] {
        var firstValue = 0
        var secondValue = 1
        var series = [firstValue, secondValue]
        var increament = 2
        while increament < number {
            firstValue = firstValue + secondValue
            secondValue = firstValue + secondValue
            increament += 2
            series.append(firstValue)
            series.append(secondValue)
        }
        return series
    }
    
    func primeFactorisationOf(number: Int) -> [Int] {
        var mult = [Int]()
        if number < 1 {
            return []
        }
        var num = number
        for eachNo in 2...number {
            timeComplexity.firstLoop += 1
            if isPrime(value: eachNo) {
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
            timeComplexity.firstLoop += 1
            for eachNoSecond in (digits-1).findPowerOfTen()...largestNDigits {
                timeComplexity.nestedloop += 1
                let result = eachNoFirst * eachNoSecond
                if result.reverse() == result && result > largest {
                    largest = result
                    //print("\(eachNoFirst) and \(eachNoSecond)")
                }
            }
        }
        return largest
    }
    
    func largest(nDigitsNum: Int) -> Int {
        let largestNumber = nDigitsNum.findPowerOfTen() - 1
        return largestNumber
    }
    
    
    /// What is the smallest number divisible by each of the numbers 1 to 20?
    ///
    /// - Parameter kValue: k = 20, 10 etc
    /// - Returns: Smallest no which will be divisible by 1 to K
    func smallestNumberDivisbleByKnos(kValue: Int) -> Int {
        var smallestNumber = 1
        for eachNo in 1...kValue {
            timeComplexity.firstLoop += 1
            if isPrime(value: eachNo) {
                var exponent = 1
                var num = 1
                var result = 1
                while num <= kValue {
                    timeComplexity.nestedloop += 1
                    result = num
                    num = eachNo.findPower(power: exponent)
                    exponent += 1
                }
                smallestNumber *= result
            }
        }
        
        return smallestNumber
    }
    
    /// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
    ///
    /// - Parameter nthTerm: Nth Term
    /// - Returns: Difference
    func problem6(nthTerm: Int) -> Int {
        let sumOfNValues = (nthTerm * (nthTerm + 1)) / 2
        let squareOfSum = sumOfNValues * sumOfNValues
        let sumOfSquareOfNthValues = nthTerm * (nthTerm + 1) * ((2 * nthTerm) + 1) / 6
        let difference = squareOfSum - sumOfSquareOfNthValues
        return difference
    }
    
    func findNthPrimeNumber(nth: Int) -> Int {
        var counter = 0
        var nthPrimeNumber = 0
        var eachNo = 1
        while counter != nth {
            timeComplexity.firstLoop += 1
            if isPrime(value: eachNo) {
                nthPrimeNumber = eachNo
                counter += 1
            }
            eachNo += 1
        }
        return nthPrimeNumber
    }
    
    func findTriplatesWhoseSumIsK(wiyhSum: Int) -> Int {
        let sum = wiyhSum
        for aValue in 1...sum {
            timeComplexity.firstLoop += 1
            for bValue in (aValue + 1)...sum {
                timeComplexity.nestedloop += 1
                let cValue = sum - aValue - bValue
                if aValue*aValue + bValue*bValue == cValue*cValue {
                    //print("a = \(aValue), b = \(bValue), c = \(cValue)")
                    return aValue * bValue * cValue
                }
            }
        }
        return 1
    }
    
    /// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    ///
    /// - Parameter sum: 1000
    /// - Returns: Multiplication of Triplet
    /// - a = m^2 - n^2
    /// - b = 2mn
    /// - c = m^2 + n^2
    /// 2mn + 2m^2
    ///2m(n+m) = 1000
    ///m(m+n) = 1000/2 = 500
    func findTripletWhoseSumisEqualtTo(sum: Int) -> Int {
        for aValue in 1...sum/3 {
            timeComplexity.firstLoop += 1
            for bValue in (aValue + 1)...sum/2 {
                timeComplexity.nestedloop += 1
                if bValue * (aValue + bValue) == sum/2 {
                    let cValue = bValue*bValue + aValue*aValue
                    //print("a = \(aValue), b = \(bValue), c = \(cValue)")
                    return aValue * bValue * cValue
                }
            }
        }
        return 0
    }
    
    /// Problem : 10 ----> Opimized way
    /// Find Sum of 'n' Prime numbers
    /// - Parameter arrSize: size if Number
    /// - Returns: Sum of all prime numbers.
    /// - https://www.youtube.com/watch?v=eKp56OLhoQs
    /// - Time complexity :  0.4813690185546875
    func findSumOfPrimeNumbers(valueOfN: Int) -> Int {
       return sieveOfEratosthenes(arrSize: valueOfN)
    }
    
    func sieveOfEratosthenes(arrSize: Int) -> Int {
        var primeArray = [Bool](repeating: true, count: arrSize)
        primeArray[0]  = false
        primeArray[1]  = false
        
        let arrCountInFloat = Float(integerLiteral: Int64(arrSize))
        let sqrootOfArrCount = Int(sqrt(arrCountInFloat))
        for prime in 2...sqrootOfArrCount {
            timeComplexity.firstLoop += 1
            if primeArray[prime] == true {
                for primeIndex in 2...primeArray.count {
                    timeComplexity.nestedloop += 1
                    if prime*primeIndex < primeArray.count {
                        primeArray[prime*primeIndex] = false
                    } else {
                        break
                    }
                }
            }
        }
        var sum = 0
        for index in 0..<primeArray.count {
            timeComplexity.extraLoop += 1
            if primeArray[index] == true {
                sum += index
            }
        }
        return sum
    }
    
    /// Problem : 10 ----> not better Opimized way
    /// Find Sum of 'n' Prime numbers
    /// - Parameter arrSize: size if Number
    /// - Returns: Sum of all prime numbers.
    /// - Not a Better way
    /// Time complexity :  3.0945130586624146

    func findSumOfPrimeNumbersNotSieveWay(valueOfN: Int) -> Int {
        return notSieveOfEratosthenes(arrSize: valueOfN)
    }
    
    func notSieveOfEratosthenes(arrSize: Int) -> Int {
        var sum = 0
        for eachNo in 2...arrSize {
            timeComplexity.firstLoop += 1
            if isPrime(value: eachNo) {
                sum += eachNo
            }
        }
        return sum
    }
    
    func isPrime(value: Int) -> Bool {
        let valueInFloat = Float(value)
        let sqrootOfValue = Int(sqrt(valueInFloat))
        if value == 0 || value == 1 {
            return false
        }
        if value == 2 || value == 3 {
            return true
        }
        for index in 2...sqrootOfValue {
            if value % index == 0 {
                return false
            }
        }
        return true
    }
}

extension Int {
    func findPowerOfTen() -> Int {
        let power = Int(truncating: NSDecimalNumber(decimal: pow(10, self)))
        return power
    }
    
    func findPower(power: Int) -> Int {
        let power = Int(truncating: NSDecimalNumber(decimal: pow(Decimal(self), power)))
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

