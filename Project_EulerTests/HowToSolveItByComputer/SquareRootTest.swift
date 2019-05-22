//
//  SquareRootTest.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/8/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class SquareRootTest: XCTestCase {
    var model: SquareRoot!
    override func setUp() {
        super.setUp()
        model = SquareRoot()
    }

    override func tearDown() {
        super.tearDown()
        model = nil
    }

    func testFindingSquareRoot() {
        let result2 = model.sqroot(number: 36)
        XCTAssertEqual(result2, 6)
        
        let result3 = model.sqroot(number: 998001)
        XCTAssertEqual(result3, 999)
    }
    
    func testFindingSquareRootOptimize() {
 
        let result2 = model.sqrootOpti(number: 36)
        XCTAssertEqual(result2, 6)
        
        let result3 = model.sqrootOpti(number: 998001)
        XCTAssertEqual(result3, 999)
    }
    
    func BS() {
        var arr = [1,2,3,4,5,7,8,9,10,11,12,13,14,15]
        let result = model.binarySearch(number: 6, arr: &arr)
        XCTAssertEqual(result, 6)
    }

    func testSquareRoot() {
        let result = model.squareRoot(number: 36)
        XCTAssertEqual(result, 6)

        let result1 = model.squareRoot(number: 998001)
        XCTAssertEqual(result1, 999)

        let result2 = model.squareRoot(number: 2)
        XCTAssertEqual(result2, 1.4142135623746899)
    }
    
    func testSquareRoot2() {
        
        let result = model.squareRoot2(number: 36)
        XCTAssertEqual(result, 6)
        
        let result1 = model.squareRoot(number: 36)
        XCTAssertEqual(result1, 6)
        
        model.timeComplexity.startTime()
        let result3 = model.squareRoot2(number: 998001)
        XCTAssertEqual(result3, 999)

        let result2 = model.squareRoot2(number: 2)
        XCTAssertEqual(result2, 1.4142135623746899)
    }
    
    func testCompare1() {
        model.timeComplexity.startTime()
        let result3 = model.sqr(number: 998001)
        model.timeComplexity.endTime(forMethod: "sqr")
        XCTAssertEqual(result3, 999)
    }
    
    func testCompare2() {
        model.timeComplexity.startTime()
        let result2 = model.squareRoot(number: 998001)
        model.timeComplexity.endTime(forMethod: "squareRoot")
        XCTAssertEqual(result2, 999)
    }
    
    func testCompare3() {
        model.timeComplexity.startTime()
        let result1 = model.squareRoot2(number: 998001)
        model.timeComplexity.endTime(forMethod: "squareRoot2")
        XCTAssertEqual(result1, 999)
        
    }
}
