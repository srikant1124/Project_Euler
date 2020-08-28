//
//  IsSubSequenceTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class IsSubSequenceTests: XCTestCase {
    var model: SubSequence!
    
    override func setUpWithError() throws {
        super.setUp()
        model = SubSequence()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        model = nil
    }

    func testExample() throws {
        let result = model.isSubSequence(str1: "hello", str2: "hello world")
        XCTAssertTrue(result, "Should Pass")
        
        let result1 = model.isSubSequence(str1: "sing", str2: "string")
        XCTAssertTrue(result1, "Should Pass")

        let result2 = model.isSubSequence(str1: "abc", str2: "abracadabra")
        XCTAssertTrue(result2, "Should Pass")

        let result3 = model.isSubSequence(str1: "abc", str2: "acb")
        XCTAssertTrue(result3, "Should Pass")

    }
}
