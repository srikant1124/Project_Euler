//
//  RemoveDuplicatesTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/25/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class RemoveDuplicatesTests: XCTestCase {

    func testExample() {
        let arr = [2, 2, 8, 15, 23, 23, 23, 26, 29, 30, 32, 32]
        let result = RemoveDuplicates.removeDuplicatesFrom(orderedArr: arr)
        XCTAssertEqual(result, [2, 8, 15, 23, 26, 29, 30, 32])
        XCTAssertEqual(result.count, [2, 8, 15, 23, 26, 29, 30, 32].count)
    }
    
    func testExample1() {
        let arr = [3, 4, 4, 4, 6, 8, 9, 9, 9, 10, 11, 11, 12, 12, 12]
        let result = RemoveDuplicates.removeAllElementOccurs(mreThan: 2, orderedArr: arr)
        XCTAssertEqual(result, [3, 6, 8, 10, 11])
        XCTAssertEqual(result.count, 5)
    }
    
    func testExample2() {
        let arr = [3]
        let result = RemoveDuplicates.removeAllElementOccurs(mreThan: 2, orderedArr: arr)
        XCTAssertEqual(result, [3])
        XCTAssertEqual(result.count, 1)
    }

    func testExample3() {
        let arr = [3, 3]
        let result = RemoveDuplicates.removeAllElementOccurs(mreThan: 2, orderedArr: arr)
        XCTAssertEqual(result, [3])
        XCTAssertEqual(result.count, 1)
    }
    
    func testExample4() {
        let arr = [3, 3, 3]
        let result = RemoveDuplicates.removeAllElementOccurs(mreThan: 2, orderedArr: arr)
        XCTAssertEqual(result, [])
        XCTAssertEqual(result.count, 0)
    }
    
    func testExample5() {
        let arr = [3, 5]
        let result = RemoveDuplicates.removeAllElementOccurs(mreThan: 2, orderedArr: arr)
        XCTAssertEqual(result, [3, 5])
        XCTAssertEqual(result.count, 2)
    }
    
    func testExample6() {
        let arr: [Int] = []
        let result = RemoveDuplicates.removeAllElementOccurs(mreThan: 2, orderedArr: arr)
        XCTAssertEqual(result, [])
        XCTAssertEqual(result.count, 0)
    }
    
    func testExample7() {
        let arr: [Int] = [1,2,3,4,5,6,7]
        let result = RemoveDuplicates.removeAllElementOccurs(mreThan: 2, orderedArr: arr)
        XCTAssertEqual(result, [1,2,3,4,5,6,7])
        XCTAssertEqual(result.count, 7)
    }
}
