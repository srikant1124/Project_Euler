//
//  LargePowerTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/11/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class LargePowerTests: XCTestCase {
    var model: LargePower!
    override func setUp() {
        super.setUp()
        model = LargePower()
    }
    
    override func tearDown() {
        super.tearDown()
        model = nil
    }
    func testPowTest() { //0.0000250 Seconds
        model.timeComplexity.startTime()
        let result = model.powOf(number: 2, power: 1000) //10000
        model.timeComplexity.endTime(forMethod: "powOf")
        XCTAssertEqual(result, 1.0715086071862673e+301)
    }
    
    func testCustomMethodForPower() { //0.0000241 Seconds
        model.timeComplexity.startTime()
        let result = model.powerOf(number: 2, power: 1000) //10000
        model.timeComplexity.endTime(forMethod: "powerOf")
        XCTAssertEqual(result, 1.0715086071862673e+301)
    }
    
    func testOptimizedCustomMethodForPower() { //0.0000100
        model.timeComplexity.startTime()
        let result = model.optimizedPowerOf(number: 2, power: 1000) //10000
        model.timeComplexity.endTime(forMethod: "optimizedPowerOf")
        XCTAssertEqual(result, 1.0715086071862673e+301)
    }
    
    func testFindBinary() {
        model.binaryOf(number: 4)
    }
    
}
