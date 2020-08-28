//
//  LargePowerPETests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 6/14/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class LargePowerPETests: XCTestCase {
    var largePower: LargePowerPE!
    override func setUp() {
     super.setUp()
        largePower = LargePowerPE()
    }

    override func tearDown() {
     super.tearDown()
        largePower = nil
    }

    func testExample() {
     let number = largePower.findSumOfDigitsAfterFindThePower(number: 2, power: 15)
        XCTAssertEqual(number, 26)
    }
    
    func testOriginal() {
        let number = largePower.findSumOfDigitsAfterFindThePower(number: 2, power: 100)
        XCTAssertEqual(number, 26)
    }
    
    func testGetAnswer() {
        let number = largePower.getAnswer()
        XCTAssertEqual(number, 1366)
    }
}
