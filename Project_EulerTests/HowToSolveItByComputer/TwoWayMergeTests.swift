//
//  TwoWayMergeTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 6/3/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class TwoWayMergeTests: XCTestCase {
    
    func testExample() {
        let arr1 = [3, 5, 8, 10, 11]
        let arr2 = [2, 7, 9, 11]
        let result = TwoWayMerge.merge(arrA: arr1, arrB: arr2)
        XCTAssertEqual(result.count, arr1.count + arr2.count)
        XCTAssertEqual(result, [2, 3, 5, 7, 8, 9, 10, 11, 11])
    }
    
    func testOrginal() {
        let arr1 = [15, 18, 42, 51]
        let arr2 = [8, 11, 16, 17, 44, 58, 71, 74]
        let result = TwoWayMerge.merge(arrA: arr1, arrB: arr2)
        XCTAssertEqual(result.count, arr1.count + arr2.count)
        XCTAssertEqual(result, [8, 11, 15, 16, 17, 18, 42, 44, 51, 58, 71, 74])
    }
    
    func testCase1() {
        let arr1 = Helper.getArrayOfIntegers(howMany: 20, maxRange: 20, repeation: false).sorted()
        let arr2 = Helper.getArrayOfIntegers(howMany: 10, maxRange: 20, repeation: false).sorted()
        let result = TwoWayMerge.merge(arrA: arr1, arrB: arr2)
        XCTAssertEqual(result.count, arr1.count + arr2.count)
        let finalArr = arr1 + arr2
        let expectedOutPut = finalArr.sorted()
        XCTAssertEqual(result, expectedOutPut)
    }
    
    func testExampleApproach1() {
        let arr1 = [3, 5, 8, 10, 11]
        let arr2 = [2, 7, 9, 11]
        let result = TwoWayMerge.mergeApproach1(arrA: arr1, arrB: arr2)
        XCTAssertEqual(result.count, arr1.count + arr2.count)
        XCTAssertEqual(result, [2, 3, 5, 7, 8, 9, 10, 11, 11])
    }
    
    func testOrginalApproach1() {
        let arr1 = [15, 18, 42, 51]
        let arr2 = [8, 11, 16, 17, 44, 58, 71, 74]
        let result = TwoWayMerge.mergeApproach1(arrA: arr1, arrB: arr2)
        XCTAssertEqual(result.count, arr1.count + arr2.count)
        XCTAssertEqual(result, [8, 11, 15, 16, 17, 18, 42, 44, 51, 58, 71, 74])
    }
    
    func testCase1Approach1() {
        let arr1 = Helper.getArrayOfIntegers(howMany: 100, maxRange: 200, repeation: false).sorted()
        let arr2 = Helper.getArrayOfIntegers(howMany: 50, maxRange: 70, repeation: false).sorted()
        let result = TwoWayMerge.mergeApproach1(arrA: arr1, arrB: arr2)
        XCTAssertEqual(result.count, arr1.count + arr2.count)
        let finalArr = arr1 + arr2
        let expectedOutPut = finalArr.sorted()
        XCTAssertEqual(result, expectedOutPut)
    }
    
    func testOptimizedmerge() {
        let arr1 = [15, 18, 42, 51]
        let arr2 = [8, 11, 16, 17, 44, 58, 71, 74]
        var arr3 = Array(repeating: -1, count: arr1.count + arr2.count)
        TwoWayMerge.merge(arrA: arr1, arrB: arr2, output: &arr3)
        let finalArr = arr1 + arr2
        let expectedArr = finalArr.sorted()
        XCTAssertEqual(arr3, expectedArr)
        XCTAssertEqual(expectedArr.count, arr3.count)
    }
    
    func testOptimizedmergeCase1() {
        let arr1 = Helper.getArrayOfIntegers(howMany: 100, maxRange: 200, repeation: false).sorted()
        let arr2 = Helper.getArrayOfIntegers(howMany: 50, maxRange: 70, repeation: false).sorted()
        var arr3 = Array(repeating: -1, count: arr1.count + arr2.count)
        print(arr1, arr2, arr3)
        TwoWayMerge.merge(arrA: arr1, arrB: arr2, output: &arr3)
        let finalArr = arr1 + arr2
        let expectedArr = finalArr.sorted()
        XCTAssertEqual(arr3, expectedArr)
        XCTAssertEqual(expectedArr.count, arr3.count)
    }
}
