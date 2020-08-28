//
//  LisasWorkbookTests.swift
//  ProjectEulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/14/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

struct LisasWorkbookInput {
    var n = 0
    var k = 0
    var arr: [Int] = []
    var output = 0
}

class LisasWorkbookTests: XCTestCase {
    
    var problem = LisasWorkbook()
    var inputs: [LisasWorkbookInput] = []
    var testCase = 1
    
    override func setUp() {
        super.setUp()
        prepareInput()
    }
    
    func prepareInput() {
        //let input1 = LisasWorkbookInput(n: 5, k: 3, arr: [4, 2, 6, 1, 10], output: 4)
        let input2 = LisasWorkbookInput(n: 10, k: 5, arr: [3, 8, 15, 11, 14, 1, 9, 2, 24, 31], output: 8)
        inputs = [ input2]
    }
    
    func testExample() {
        for test in inputs {
            let result = problem.workbook(n: test.n, k: test.k, arr: test.arr)
            XCTAssertEqual(result, test.output, "Case: \(testCase) Output = \(test.output) Wrong Output = \(result)")
            testCase += 1
        }
    }

}
