//
//  MaximumNumberTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/24/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class MaximumNumberTests: XCTestCase {

    func testExample() {
        let arr = [8, 6, 5, 15, 7, 19, 21, 6, 13]
        let max = MaximumNumber.maximum(arr: arr)
        XCTAssertEqual(max, 21)
        
        let min = MaximumNumber.minimum(arr: arr)
        XCTAssertEqual(min, 5)
        
        let arr1 = [30, 26, 8, 30, 6, 5, 24, 15, 30, 7, 19, 21, 6, 13, 24, 30]
        let result = MaximumNumber.maximumWithOccur(arr: arr1)
        XCTAssertEqual(result.max, 30)
        XCTAssertEqual(result.count, 4)
        
        let result2 = MaximumNumber.maximumWithPositionFirstOccur(arr: arr1)
        XCTAssertEqual(result2.max, 30)
        XCTAssertEqual(result2.position, 0)
        
        let result3 = MaximumNumber.maximumWithPositionLastOccur(arr: arr1)
        XCTAssertEqual(result3.max, 30)
        XCTAssertEqual(result3.position, 15)
        
        let result4 = MaximumNumber.secondLargest(arr: arr)
        XCTAssertEqual(result4.max, 19)
        XCTAssertEqual(result4.count, 1)

        let result5 = MaximumNumber.secondLargest(arr: arr1)
        XCTAssertEqual(result5.max, 26)
        XCTAssertEqual(result5.count, 2)
    }
    
    func testMaxMinWithOccurCase1() {
        let arr2 :[Int] = []
        let result6 = MaximumNumber.maxAndMinWithOccur(arr: arr2)
        XCTAssertEqual(result6.max, -1)
        XCTAssertEqual(result6.maxCount, -1)
        
        XCTAssertEqual(result6.min, -1)
        XCTAssertEqual(result6.minCount, -1)
    }
    
    func testMaxMinWithOccurCase2() {
        let arr2 :[Int] = [-1, -2, -3, -4, 0, 1]
        let result6 = MaximumNumber.maxAndMinWithOccur(arr: arr2)
        XCTAssertEqual(result6.max, 1)
        XCTAssertEqual(result6.maxCount, 1)
        
        XCTAssertEqual(result6.min, -4)
        XCTAssertEqual(result6.minCount, 1)
    }
    
    func testMaxMinWithOccurCase3() {
        let arr2 :[Int] = [0,1,2]
        let result6 = MaximumNumber.maxAndMinWithOccur(arr: arr2)
        XCTAssertEqual(result6.max, 2)
        XCTAssertEqual(result6.maxCount, 1)
        XCTAssertEqual(result6.min, 0)
        XCTAssertEqual(result6.minCount, 1)
    }
}
