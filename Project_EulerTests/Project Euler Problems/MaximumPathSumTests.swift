//
//  MaximumPathSumTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 6/23/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class MaximumPathSumTests: XCTestCase {
    var model: MaximumPathSum!
    func testExample() {
        model = MaximumPathSum()
        model.prepareMatrix()
       let result = model.solveTheProblem()
        XCTAssertEqual(result, 1074)
    }

}
