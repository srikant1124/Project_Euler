//
//  PrimeNumbersTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/14/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class PrimeNumbersTests: XCTestCase {
    
    func findNthPrimeNumber() {
        let nthPrimeNo3 = PrimeNumbers.findNthPrimeNumber(nth: 1000098)
        XCTAssertEqual(nthPrimeNo3, 104743) // 1000098th -> 15487429
    }
//
//    func testFind_N_PrimeNumbers_LittleOptimized() {
//        let sum = PrimeNumbers.findSumOfPrimeNumbersOptimized(valueOfN: 1000)
//        XCTAssertEqual(76127, sum)
//    }
//
//    func testFind_N_PrimeNumbers() {
//        let sum = PrimeNumbers.findSumOfPrimeNumbers(valueOfN: 1000)
//        XCTAssertEqual(76127, sum)
//    }
    
    func PrimeFactorisationOfNumber() {
        let arr = PrimeNumbers.primeFactorisation(number: 54624236237)
        XCTAssertEqual([29, 1883594353], arr)
    }
    
    func testPrimeFactorsList() {
        let arr = [
            28,
            36,
            45,
            105,
            990,
            9870,
            35778
        ]
        
        for eachNo in arr {
            let arr1 = PrimeNumbers.primeFactorisation(number: eachNo)
            print(arr1)
        }
    }
}
