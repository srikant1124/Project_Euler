//
//  ServiceLaneTests.swift
//  ProjectEulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/12/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

struct ServiceLaneInput {
    var cases = [[Int]]()
    var width: [Int] = []
    var output = [Int]()
}

class ServiceLaneTests: XCTestCase {
    
    var problem = ServiceLane()
    var inputs: [ServiceLaneInput] = []
    var testCase = 1
    
    override func setUp() {
        super.setUp()
        prepareInput()
    }
    
    func prepareInput() {
        let input1 = ServiceLaneInput(cases: [[0, 3], [4, 6], [6, 7], [3, 5], [0, 7]],
                                      width: [2, 3, 1, 2, 3, 2, 3, 3],
                                      output: [1,2,3,2,1])
        inputs = [input1]
    }
    
    func testExample() {
        for test in inputs {
            let result = problem.serviceLane(n: 0, cases: test.cases, width: test.width)
            XCTAssertEqual(result, test.output, "Case: \(testCase) Output = \(test.output) Wrong Output = \(result)")
            testCase += 1
        }
    }
}
