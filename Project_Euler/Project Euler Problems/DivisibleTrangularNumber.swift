//
//  DivisibleTrangularNumber.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 4/28/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

/*================================================================================================================
https://projecteuler.net/problem=12
Highly divisible triangular number
Problem 12
The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:

1: 1
3: 1,3
6: 1,2,3,6
10: 1,2,5,10
15: 1,3,5,15
21: 1,3,7,21
28: 1,2,4,7,14,28
We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?
================================================================================================================
*/
//https://www.geeksforgeeks.org/efficient-program-print-number-factors-n-numbers/
//https://www.math.upenn.edu/~deturck/m170/wk2/numdivisors.html

import Foundation

class DivisibleTrangularNumber {
    var timeComplexity = TimeComplexity()

    func findTriangularNumbers(for value: Int) -> [Int] {
        var triangularnumbers = [Int]()
        for eachElement in 1...value {
            let triangularNo = (eachElement * (eachElement + 1))/2
            triangularnumbers.append(triangularNo)
        }
        return triangularnumbers
    }
    
    func findTriangularNumber(th value: Int) -> Int {
        let triangularNo = (value * (value + 1))/2
        return triangularNo
    }
    
    func findDivisorsOfTriangularNos(with triangularNo: Int) -> [Int] {
        var divisors = [Int]()
        let max = Int(sqrt(Double(triangularNo)))
        for eachNo in 1...max {
            if triangularNo % eachNo == 0 {
                addUniqueElementToList(item: eachNo, list: &divisors)
                addUniqueElementToList(item: triangularNo / eachNo, list: &divisors)
            }
        }
        return divisors
    }
    
    func addUniqueElementToList(item: Int, list: inout [Int]) {
        if !list.contains(item) {
            list.append(item)
        }
    }
    
    func find1stTriangularNumberHavingMoreThan(divisors: Int) -> Int {
        var divisorCount = 0
        var outputTriangular = 1
        var number = 1
        while divisorCount < divisors {
            let eachTriangular = findTriangularNumber(th: number)
            //Way 1 : 7.4634 Seconds
            //let count = findDivisorsOfTriangularNos(with: eachTriangular).count
            //Way 2 : Optimized 5.5502 Seconds
            let count = findTotalDivisorsCountsOf(number: eachTriangular)
            divisorCount = count
            if divisors <= divisorCount {
                outputTriangular = eachTriangular
                break
            }
            number += 1
        }
        return outputTriangular
    }
    
    func findTotalDivisorsCountsOf(number: Int) -> Int {
        var totalDivisors = 1
        if number == 1 {
            return totalDivisors
        }
        let primeFactors = PrimeNumbers.primeFactorisation(number: number)
        var map = [Int: Int]()
        for eachPrime in primeFactors {
            if let value = map[eachPrime] {
                map[eachPrime] = value + 1
            } else {
                map[eachPrime] = 1
            }
        }
        for (_, value) in map {
            //https://www.math.upenn.edu/~deturck/m170/wk2/numdivisors.html
            totalDivisors *= value + 1 //Why adding 1 , see the link
        }
        return totalDivisors
    }
    
    func primeFactorisationOf(number: Int) -> [Int] {
        var primeFactors = [Int]()
        if number <= 1 {
            return []
        }
        if PrimeNumbers.isPrime(number: number) {
            return [number]
        }
        var num = number
        for eachNo in 2...number {
            if PrimeNumbers.isPrime(number: eachNo) {
                if 1 < num {
                    if num % eachNo == 0 {
                        primeFactors.append(eachNo)
                        num = num/eachNo
                        while num % eachNo == 0 && num > 0 {
                            primeFactors.append(eachNo)
                            num = num / eachNo
                        }
                    }
                } else {
                    break
                }
            }
        }
        return primeFactors
    }
    
    func collectPrimeFactors(prime: Int, num: inout Int, primeFactors: inout [Int]) {
        while num % prime == 0 && num > 0 {
            primeFactors.append(prime)
            num = num / prime
        }
    }
}
