//
//  ChocolateFeastTests.swift
//  ProjectEulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/12/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

struct ChocolateFeastInput {
    var n = 0
    var c = 0
    var m = 0
    var output = 0
}

class ChocolateFeastTests: XCTestCase {
    
    var problem = ChocolateFeast()
    var inputs: [ChocolateFeastInput] = []
    var testCase = 1
    
    override func setUp() {
        super.setUp()
        prepareInput()
    }
    
    func prepareInput() {
        let input1 = ChocolateFeastInput(n: 15, c: 3, m: 2, output: 9)
        let input2 = ChocolateFeastInput(n: 10, c: 2, m: 5, output: 6)
        let input3 = ChocolateFeastInput(n: 12, c: 4, m: 4, output: 3)
        let input4 = ChocolateFeastInput(n: 6, c: 2, m: 2, output: 5)
        inputs = [input1, input2, input3, input4]
    }
    
    func testExample() {
        for test in inputs {
            let result = problem.chocolateFeast(n: test.n, c: test.c, m: test.m)
            XCTAssertEqual(result, test.output, "Case: \(testCase) Output = \(test.output) Wrong Output = \(result)")
            testCase += 1
        }
    }
    
}
