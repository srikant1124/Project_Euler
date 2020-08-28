//
//  JarCountsTest.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/7/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class JarCountsTest: XCTestCase {
    var model: JarCounts!
    override func setUp() {
        super.setUp()
        model = JarCounts()
    }

    override func tearDown() {
        super.tearDown()
        model = nil
    }

    func testExample() {
        var arr = [1, 2, 3, 6, 12]
//        var arr = [1, 2, 3, 14, 15, 20]
        //var arr = [2, 3, 10, 14, 15, 16, 20]

        let jarCounts = model.countMinJars(valueC: 3, valueK: 5, arr: arr)
        XCTAssertEqual(jarCounts, 3)
    }

}
