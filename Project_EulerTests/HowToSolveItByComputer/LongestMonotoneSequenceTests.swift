//
//  LongestMonotoneSequenceTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 6/2/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class LongestMonotoneSequenceTests: XCTestCase {

    func testExample() {
        var arr = Helper.getArrayOfIntegers(howMany: 100, maxRange: 100, repeation: false)
        LongestMonotoneSequence.findLengthOfLongestMonotoneSequence(arr: &arr)
    }
    
    func testCaseOriginal() {
        var arr = [1, 2, 9, 5, 6, 4, 7, 3, 11, 8]
        let result = LongestMonotoneSequence.findLengthOfLongestMonotoneSequence(arr: &arr)
        XCTAssertEqual(result, 6)
    }
    
    
    func testCase1() {
        var arr = [14, 4, 3, 7, 15, 1, 16, 19, 6, 10, 13]
        let result = LongestMonotoneSequence.findLengthOfLongestMonotoneSequence(arr: &arr)
        XCTAssertEqual(result, 5)
    }
    
    func testCase2() {
        var arr = [2, 1, 6, 3, 19, 0, 14, 15, 17, 16, 7]
        let result = LongestMonotoneSequence.findLengthOfLongestMonotoneSequence(arr: &arr)
        XCTAssertEqual(result, 5)
    }
    
    func testCase3() {
        var arr = [18, 11, 17, 2, 0, 8, 5, 16, 7, 19, 14]
        let result = LongestMonotoneSequence.findLengthOfLongestMonotoneSequence(arr: &arr)
        XCTAssertEqual(result, 4)
    }
    
    func testCase4() {
        var arr = [4, 10, 7, 19, 9, 18, 14, 8, 16, 0, 13]
        let result = LongestMonotoneSequence.findLengthOfLongestMonotoneSequence(arr: &arr)
        XCTAssertEqual(result, 5)
    }
    
    func testCase5() {
        var arr = [7, 14, 10, 0, 9, 5, 8, 6, 16, 3, 12]
        let result = LongestMonotoneSequence.findLengthOfLongestMonotoneSequence(arr: &arr)
        XCTAssertEqual(result, 4)
    }
}
