//
//  ArrayReverseTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/17/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class ArrayReverseTests: XCTestCase {
    
    func testReverseOfArray() {
        var inputArr = [3, 4, 5, 6, 7]
        let reversedArr = ArrayReverse.reveseTheArray(arr: &inputArr)
        XCTAssertEqual(reversedArr, [7, 6, 5, 4, 3])
    }
    
    func testWay2() {
        var inputArr2 = [3, 4, 5, 6, 7]
        let reversedArr1 = ArrayReverse.reveseTheArrayWay2(arr: &inputArr2)
        XCTAssertEqual(reversedArr1, [7, 6, 5, 4, 3])
        
    }
    
    func testSimplerWay() {
        var inputArr3 = [3, 4, 5, 6, 7]
        let reversedArr2 = ArrayReverse.reveseTheArraySimpler(arr: &inputArr3)
        XCTAssertEqual(reversedArr2, [7, 6, 5, 4, 3])
    }

}
