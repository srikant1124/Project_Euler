//
//  BeautifulTripletsTests.swift
//  ProjectEulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/11/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

struct BeautifulTripletsInput {
    var arr: [Int] = []
    var d = 0
    var output = 0
}

class BeautifulTripletsTests: XCTestCase {
    var problem: BeautifulTriplets!
    var inputs: [BeautifulTripletsInput] = []
    var testCase = 1
    
    override func setUp() {
        super.setUp()
        problem = BeautifulTriplets()
        prepareInput()
    }

    override func tearDown() {
        super.tearDown()
        problem = nil
    }

    
    func prepareInput() {
        let input1 = BeautifulTripletsInput(arr: [2,2,3,4,5], d: 1, output: 3)
        let input2 = BeautifulTripletsInput(arr: [1, 2, 4, 5, 7, 8, 10], d: 3, output: 3)
        inputs = [input1, input2]
    }

    func test_NotSort_PerformanceExample() {
        let input1 = BeautifulTripletsInput(arr: [2,3,2,5,4], d: 1, output: 3)
        let input2 = BeautifulTripletsInput(arr: [10, 4, 2, 7, 5, 8, 1], d: 3, output: 3)
        inputs = [input1, input2]
        for test in inputs {
            let result = problem.not_sorted_beautifulTriplets(d: test.d, arr: test.arr)
            XCTAssertEqual(result, test.output, "Case: \(testCase) Output = \(test.output) Wrong Output = \(result)")
            testCase += 1
        }
    }
    
    func testPerformanceExample() {
        for test in inputs {
            let result = problem.beautifulTriplets(d: test.d, arr: test.arr)
            XCTAssertEqual(result, test.output, "Case: \(testCase) Output = \(test.output) Wrong Output = \(result)")
            testCase += 1
        }
    }
    
    func testway1_PerformanceExample() {
        for test in inputs {
            let result = problem.no_beautifulTriplets(d: test.d, arr: test.arr)
            XCTAssertEqual(result, test.output, "Case: \(testCase) Output = \(test.output) Wrong Output = \(result)")
            testCase += 1
        }
    }
    
    func testWay2_PerformanceExample() {
        for test in inputs {
            let result = problem.not_beautifulTriplets(d: test.d, arr: test.arr)
            XCTAssertEqual(result, test.output, "Case: \(testCase) Output = \(test.output) Wrong Output = \(result)")
            testCase += 1
        }
    }

}
