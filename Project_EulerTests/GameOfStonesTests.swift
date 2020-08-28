//
//  GameOfStonesTests.swift
//  ProjectEulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/22/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

struct GameOfStonesInput {
    var arr: [Int] = []
    var output = [String]()
}

class GameOfStonesTests: XCTestCase {
    
    var problem = GameOfStones()
    var inputs: [GameOfStonesInput] = []
    var testCase = 1
    
    override func setUp() {
        super.setUp()
        prepareInput()
    }
    
    func prepareInput() {
        let input2 = GameOfStonesInput(arr: [1, 2, 3, 4, 5, 6, 7, 10], output: ["Second",
                                                                                   "First",
                                                                                   "First",
                                                                                   "First",
                                                                                   "First",
                                                                                   "First",
                                                                                   "Second",
                                                                                   "First"])
        inputs = [input2]
    }
    
    func testExample() {
        for test in inputs {
            var index = 0
            for number in test.arr {
                let result = problem.gameOfStones(n: number)
                XCTAssertEqual(result, test.output[index], "Output = \(test.output[index]) Wrong Output = \(result)")
                index += 1
            }
        }
    }
}
