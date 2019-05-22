//
//  LongestCollatzSequenceTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/18/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class LongestCollatzSequenceTests: XCTestCase {
    func testLongestCollatzSequence() {
       let result = LongestCollatzSequence.longestCollatzSequence(number: 1000000)
        XCTAssertEqual(result, 837799)
    }
    
    func testOptimizeWithExtraStorage() {
        let result2 = LongestCollatzSequence.longestCollatzSequenceWithExtraStorage(number: 1000000)
        XCTAssertEqual(result2, 837799)
    }
}
