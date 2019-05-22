//
//  GCDTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/10/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class GCDTests: XCTestCase {
    var model: GCD!
    override func setUp() {
        super.setUp()
        model = GCD()
    }

    override func tearDown() {
        super.tearDown()
        model = nil
    }

    func testGCD() {
        let gcdResult = model.gcd(numberA: 18, numberB: 36)
        XCTAssertEqual(gcdResult, 18)
        
        let gcdResult1 = model.gcd(numberA: 12, numberB: 36)
        XCTAssertEqual(gcdResult1, 12)
        
        let gcdResult2 = model.gcd(numberA: 30, numberB: 18)
        XCTAssertEqual(gcdResult2, 6)
        
        let gcdResult3 = model.gcd(numberA: 98, numberB: 56)
        XCTAssertEqual(gcdResult3, 14)
        
        let gcdResult4 = model.gcd(numberA: 7, numberB: 13)
        XCTAssertEqual(gcdResult4, 1)

        let gcdResult5 = model.gcd(numberA: 28, numberB: 20)
        XCTAssertEqual(gcdResult5, 4)
    }
}
