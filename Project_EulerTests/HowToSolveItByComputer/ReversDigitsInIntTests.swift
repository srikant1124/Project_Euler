//
//  ReversDigitsInIntTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/3/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class ReversDigitsInIntTests: XCTestCase {
    var model: ReversDigitsInInt!
    override func setUp() {
        super.setUp()
        model = ReversDigitsInInt()
    }

    override func tearDown() {
        super.tearDown()
        model = nil
    }

    func testReverseDigitCase1() {
        let inPut = 27953
        let expectedOutPut = 35972
        let reverseDigits = model.reversDigitsInInteger(number: inPut)
        XCTAssertEqual(reverseDigits, expectedOutPut)
    }
    
    func testReverseDigitCase2() {
        let inPut = -27953
        let expectedOutPut = -35972
        let reverseDigits = model.reversDigitsInInteger(number: inPut)
        XCTAssertEqual(reverseDigits, expectedOutPut)
    }
    
    func testReverseDigitCase3() {
        let inPut = -2
        let expectedOutPut = -2
        let reverseDigits = model.reversDigitsInInteger(number: inPut)
        XCTAssertEqual(reverseDigits, expectedOutPut)
    }
    
    func testReverseDigitCase4() {
        let inPut = 2
        let expectedOutPut = 2
        let reverseDigits = model.reversDigitsInInteger(number: inPut)
        XCTAssertEqual(reverseDigits, expectedOutPut)
    }
    
    func testReverseDigitCase5() {
        let inPut = 00000
        let expectedOutPut = 00000
        let reverseDigits = model.reversDigitsInInteger(number: inPut)
        XCTAssertEqual(reverseDigits, expectedOutPut)
    }
}
