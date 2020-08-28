//
//  TheTimeInWordsTests.swift
//  ProjectEulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/11/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

struct TheTimeInWordsInput {
    var h = 0
    var m = 0
    var output = ""
}

class TheTimeInWordsTests: XCTestCase {
    var problem = TheTimeInWords()
    var inputs: [TheTimeInWordsInput] = []
    var testCase = 1
    
    override func setUp() {
        super.setUp()
        prepareInput()
    }
    
    func prepareInput() {
        let input1 = TheTimeInWordsInput(h: 5, m: 00, output: "five o' clock")
        let input2 = TheTimeInWordsInput(h: 5, m: 01, output: "one minute past five")
        let input3 = TheTimeInWordsInput(h: 5, m: 10, output: "ten minutes past five")
        let input4 = TheTimeInWordsInput(h: 5, m: 15, output: "quarter past five")
        let input5 = TheTimeInWordsInput(h: 5, m: 30, output: "half past five")
        let input6 = TheTimeInWordsInput(h: 5, m: 40, output: "twenty minutes to six")
        let input7 = TheTimeInWordsInput(h: 5, m: 45, output: "quarter to six")
        let input8 = TheTimeInWordsInput(h: 5, m: 47, output: "thirteen minutes to six")
        inputs = [input1, input2, input3, input4, input5, input6, input7, input8]
    }
    
    func testExample() {
        for test in inputs {
            let result = problem.timeInWords(h: test.h, m: test.m)
            XCTAssertEqual(result, test.output, "Case: \(testCase) Output = \(test.output) Wrong Output = \(result)")
            testCase += 1
        }
    }
    
}
