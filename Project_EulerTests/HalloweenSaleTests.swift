//
//  HalloweenSaleTests.swift
//  ProjectEulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/11/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

struct HalloweenSaleInput {
    var p = 0
    var d = 0
    var m = 0
    var s = 0
    var output = 0
}

class HalloweenSaleTests: XCTestCase {
    var problem = HalloweenSale()
    var inputs: [HalloweenSaleInput] = []
    var testCase = 1

    override func setUp() {
        super.setUp()
        prepareInput()
    }
    
    func prepareInput() {
        let input1 = HalloweenSaleInput(p: 20, d: 3, m: 6, s: 80, output: 6)
        let input2 = HalloweenSaleInput(p: 20, d: 3, m: 6, s: 85, output: 7)
        let input3 = HalloweenSaleInput(p: 100, d: 19, m: 1, s: 180, output: 1)
        inputs = [input1, input2, input3]
    }

    func testExample() {
        for test in inputs {
            let result = problem.howManyGames(p: test.p, d: test.d, m: test.m, s: test.s)
            XCTAssertEqual(result, test.output, "Case: \(testCase) Output = \(test.output) Wrong Output = \(result)")
            testCase += 1
        }
    }

}
