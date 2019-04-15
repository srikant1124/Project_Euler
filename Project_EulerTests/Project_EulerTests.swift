//
//  Project_EulerTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/14/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class Project_EulerTests: XCTestCase {

    func testProblem1() {
        let testCase1 = DataModel(input: 10)
        let testSum1 = testCase1.findSummationOfMultiple(with: 3, inputTwo: 5)
        XCTAssertEqual(testSum1, 23)
        let testCase2 = DataModel(input: 1000)
        let testSum2 = testCase2.findSummationOfMultiple(with: 3, inputTwo: 5)
        XCTAssertEqual(testSum2, 233168)
    }
    
    func testProblem2() {
        let testCase1 = DataModel(input: 0)
        let testSum1 = testCase1.findSumOfEvenValuedFromFibbonaciSequency(withMaxTerm: 8)
        XCTAssertEqual(testSum1, 2)
        print("===========Test1============\n")
        let testSum2 = testCase1.findSumOfEvenValuedFromFibbonaciSequency(withMaxTerm: 55)
        XCTAssertEqual(testSum2, 44)
        print("===========Test2============\n")

        let testSum3 = testCase1.findSumOfEvenValuedFromFibbonaciSequency(withMaxTerm: 89)
        XCTAssertEqual(testSum3, 44)
        print("===========Test3============\n")

        let testSum4 = testCase1.findSumOfEvenValuedFromFibbonaciSequency(withMaxTerm: 4000000)
        XCTAssertEqual(testSum4, 4613732)
        //let value = 40000000
    }
    
    func testIsPrime() {
        XCTAssertEqual(2.isPrime(), true)
        XCTAssertEqual(3.isPrime(), true)
        XCTAssertEqual(10.isPrime(), false)
        XCTAssertEqual(17.isPrime(), true)
        XCTAssertEqual(29.isPrime(), true)
        XCTAssertEqual(20.isPrime(), false)
        XCTAssertEqual(21.isPrime(), false)
    }
    
    func testPrimeFactorisationOfNum() {
        let testCase1 = DataModel(input: 0)
        let primeCount = testCase1.primeFactorisationOf(number: 2)
        XCTAssertEqual(primeCount.count, 1)
        
        let primeFactors1 = testCase1.primeFactorisationOf(number: 3)
        XCTAssertEqual(primeFactors1.count, 1)
        
        let primeFactors2 = testCase1.primeFactorisationOf(number: 4)
        XCTAssertEqual(primeFactors2.count, 1)
        
        let primeFactors3 = testCase1.primeFactorisationOf(number: 5)
        XCTAssertEqual(primeFactors3.count, 1)
        
        let primeFactors4 = testCase1.primeFactorisationOf(number: 21)
        XCTAssertEqual(primeFactors4.count, 2)
        XCTAssertEqual(primeFactors4.sorted(by: >)[0], 7)

        let primeFactors5 = testCase1.primeFactorisationOf(number: 13195)
        XCTAssertEqual(primeFactors5.count, 4)
        XCTAssertEqual(primeFactors5.sorted(by: >)[0], 29)
        
        let primeFactors6 = testCase1.primeFactorisationOf(number: 600851475143)
        XCTAssertEqual(primeFactors6.count, 4)
        XCTAssertEqual(primeFactors6.sorted(by: >)[0], 6857)
        
        let primeFactors7 = testCase1.primeFactorisationOf(number: 228)
        XCTAssertEqual(primeFactors7.count, 3)
        XCTAssertEqual(primeFactors7.sorted(by: >)[0], 19)
        
        let primeFactors8 = testCase1.primeFactorisationOf(number: 189)
        XCTAssertEqual(primeFactors8.count, 2)
        XCTAssertEqual(primeFactors8.sorted(by: >)[0], 7)
        
        let primeFactors9 = testCase1.primeFactorisationOf(number: 300)
        XCTAssertEqual(primeFactors9.count, 3)
        XCTAssertEqual(primeFactors9.sorted(by: >)[0], 5)
    }
    
    func testLargestNDigitsNumber() {
        let testCase1 = DataModel(input: 0)
        let largestNumber = testCase1.largest(nDigitsNum: 1)
        XCTAssertEqual(largestNumber, 9)

        let largestNumber2 = testCase1.largest(nDigitsNum: 2)
        XCTAssertEqual(largestNumber2, 99)
        
        let largestNumber3 = testCase1.largest(nDigitsNum: 3)
        XCTAssertEqual(largestNumber3, 999)
    }
    
    func testLargestPalindrum() {
        let testCase1 = DataModel(input: 0)
        let largestNumber = testCase1.findLargestPalindrumNumber(digits: 2)
        XCTAssertEqual(largestNumber, 9009)

        let largestNumber2 = testCase1.findLargestPalindrumNumber(digits: 3)
        XCTAssertEqual(largestNumber2, 906609)
    }
}
