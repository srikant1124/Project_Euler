//
//  kThSmallestElementTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/30/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class kThSmallestElementTests: XCTestCase {

    func testExample() {
        var arr = [9,8,3,6,2,7,1]
        let result = kThSmallestElement.kthSmallestElement(kTh: 3, arr: &arr)
        XCTAssertEqual(result, 3)
    }

    func testKthSmallestSelectionWay() {
        var arr = [9,8,3,6,2,7,1]
        let result = kThSmallestElement.kthSmallestUsingSelection(arr: &arr, kth: 3)
        XCTAssertEqual(result, 3)
    }
    
    func testKthLargestSelectionWay() {
        var arr = [9,8,3,6,2,7,1]
        let result = kThSmallestElement.kthLargestUsingSelection(arr: &arr, kth: 3)
        XCTAssertEqual(result, 7)
    }
    
}
