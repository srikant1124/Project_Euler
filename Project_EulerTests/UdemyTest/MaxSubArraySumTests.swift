//
//  MaxSubArraySumTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/23/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class MaxSubArraySumTests: XCTestCase {
    var maxSum: MaxSubArraySum!
    
    override func setUpWithError() throws {
        super.setUp()
        maxSum = MaxSubArraySum()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        maxSum = nil
    }

    func testExample() throws {
        if let _ = maxSum.maxSubArraySum(arr: [2, 3], num: 3) {
            XCTFail("It should not pass")
        } else {
            XCTAssertTrue(true, "It should fail")
        }
        if let result = maxSum.maxSubArraySum(arr: [3, -2, 7, -4, 1, -1, 4, -2, 1], num: 2) {
            XCTAssertEqual(result, 5, "Sum should match")
        } else {
            XCTFail("It should not fail")
        }
        
        if let result = maxSum.maxSubArraySum(arr: [-3, 4, 0, -2, 6, -1], num: 2) {
            XCTAssertEqual(result, 5, "Sum should match")
        } else {
            XCTFail("It should not fail")
        }
        
        if let result = maxSum.maxSubArraySum(arr: [1, 4, 2, 10,23,3,1,0,20], num: 4) {
            XCTAssertEqual(result, 39, "Sum should match")
        } else {
            XCTFail("It should not fail")
        }
        
        if let result = maxSum.maxSubArraySum(arr: [100, 200, 300, 400], num: 2) {
            XCTAssertEqual(result, 700, "Sum should match")
        } else {
            XCTFail("It should not fail")
        }
        
        if let _ = maxSum.maxSubArraySum(arr: [], num: 4) {
            XCTFail("It should not pass")
        } else {
            XCTAssertTrue(true, "It should fail")
        }
        
        if let result4 = maxSum.maxSubArraySum(arr: [4,2,1,6,2], num: 4) {
            XCTAssertEqual(result4, 13, "Sum should match")
        } else {
            XCTFail("It should not fail")
        }
        
        if let result3 = maxSum.maxSubArraySum(arr: [4,2,1,6], num: 1) {
            XCTAssertEqual(result3, 6, "Sum should match")
        } else {
            XCTFail("It should not fail")
        }
        
        if let result2 = maxSum.maxSubArraySum(arr: [1,2,5,2,8,1,5], num: 4) {
            XCTAssertEqual(result2, 17, "Sum should match")
        } else {
            XCTFail("It should not fail")
            
        }
        
        if let result1 = maxSum.maxSubArraySum(arr: [1,2,5,2,8,1,5], num: 2) {
            XCTAssertEqual(result1, 10, "Sum should match")
        } else {
            XCTFail("It should not fail")
        }
        
        if let result = maxSum.maxSubArraySum(arr: [2,6,9,2,1,8,5,6,3], num: 3) {
            XCTAssertEqual(result, 19, "Sum should match")
        } else {
            XCTFail("It should not fail")
        }
    }

}
