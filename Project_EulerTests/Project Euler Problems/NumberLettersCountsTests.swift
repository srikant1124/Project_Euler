//
//  NumberLettersCountsTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 6/22/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class NumberLettersCountsTests: XCTestCase {
    var model: NumberLettersCounts!
    func testExample() {
        model = NumberLettersCounts()
        let count = model.getLenth(number: 1)
        XCTAssertEqual(count.0, 3)
        
        let count1 = model.getLenth(number: 9)
        XCTAssertEqual(count1.0, 4)
    }
    
    func testGetFirstDigit() {
        model = NumberLettersCounts()
        let digit = model.getFirstDigits(number: 21)
        XCTAssertEqual(digit, 2)
    }
    
    func testGetFirstDigit1() {
        model = NumberLettersCounts()
        let digit = model.getFirstDigits(number: 213)
        XCTAssertEqual(digit, 2)
        let numberLength = model.getDigitCounts(number: 213)
        XCTAssertEqual(numberLength, 3)
    }
    
    func testExample1() {
        model = NumberLettersCounts()
        let count = model.getLenth(number: 135)
//        XCTAssertEqual(count.0, "onehundredthirtyfive".count)
    }
    
    func testExample2() {
        model = NumberLettersCounts()
        let count = model.getLenth(number: 115)
        print(count.1)
        XCTAssertEqual(count.0, 20)
    }
    
    func testExample3() {
        model = NumberLettersCounts()
        let count = model.addAllLettersOfNumberTill(from: 1, toNumber: 1000)
        XCTAssertEqual(count, 21124)
    }
    
    func testExample1To9() {
        model = NumberLettersCounts()
        let count = model.addAllLettersOfNumberTill(from: 1, toNumber: 9)
        XCTAssertEqual(count, 36)
    }
    
    func testExample10To19() {
        model = NumberLettersCounts()
        let count = model.addAllLettersOfNumberTill(from: 10, toNumber: 19)
        XCTAssertEqual(count, 70)
    }
    
    func testExample20To99() {
        model = NumberLettersCounts()
        let count = model.addAllLettersOfNumberTill(from: 20, toNumber: 99)
        XCTAssertEqual(count, 748)
    }
    
    func testExample1To99() {
        model = NumberLettersCounts()
        let count = model.addAllLettersOfNumberTill(from: 1, toNumber: 99)
        XCTAssertEqual(count, 854)
    }
}
