//
//  CountingSundaysTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 6/30/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class CountingSundaysTests: XCTestCase {
    var  model: CountingSundays!
    override func setUp() {
        super.setUp()
        model = CountingSundays()
    }

    override func tearDown() {
        super.tearDown()
        model = nil
    }

    func testExample() {
      let sundays = model.solveProblem()
        XCTAssertEqual(sundays, 171)
    }
}
