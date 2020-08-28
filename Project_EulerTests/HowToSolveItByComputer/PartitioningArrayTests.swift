//
//  PartitioningArrayTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/25/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class PartitioningArrayTests: XCTestCase {
    func testExample() {
        let arr = [1,2,3,4,5,6,7,8,9,10,11]
        let result = PartitioningArray.customLoop(arr: arr)
        XCTAssertEqual(result, arr.count/2 + 1)
        
        let arr1 = [1,2,3,4,5,6,7,8,9,10,11,12]
        let result1 = PartitioningArray.customLoop(arr: arr1)
        XCTAssertEqual(result1, arr1.count/2)
        
        let arr2 = [1]
        let result2 = PartitioningArray.customLoop(arr: arr2)
        XCTAssertEqual(result2, arr2.count/2+1)
        
        let arr3 = [1,2]
        let result3 = PartitioningArray.customLoop(arr: arr3)
        XCTAssertEqual(result3, arr3.count/2)
    }
    
    func testPartitionTheArr() {
        var arr = [28, 26, 25, 11, 16, 12, 24, 29, 6, 10]
        PartitioningArray.partitioningArray(arr: &arr, x: 17)
        XCTAssertEqual(arr, [10, 6, 12, 11, 16, 25, 24, 29, 26, 28])
    }
    
    func testPartitionCase1() {
        var arr = [5, 6, 7]
        PartitioningArray.partitioningArray(arr: &arr, x: 5)
        XCTAssertEqual(arr, [5, 6, 7])
    }
    
    func testPartitionCase2() {
        var arr = [8, 10, 11, 5, 6, 7]
        let p = PartitioningArray.partitioningArray(arr: &arr, x: 6)
        print(arr)
        XCTAssertEqual(p, 1)
    }
    
    func testPartitionCase3() {
        var arr = [8, 10, 11, 5, 6, 7]
        let p = PartitioningArray.partitioningArray(arr: &arr, x: 10)
        print(arr)
        XCTAssertEqual(p, 4)
    }
}
