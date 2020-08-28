//
//  LongestSubstringTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class LongestSubstringTests: XCTestCase {
    var model: LongestSubstring!
    
    override func setUpWithError() throws {
        super.setUp()
        model = LongestSubstring()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        model = nil
    }

    func testExample() throws {
        let result = model.longestSubstring(str: "")
        XCTAssertEqual(result, 0, "result should match")
        
        let result1 = model.longestSubstring(str: "rithmschool")
        XCTAssertEqual(result1, 7, "result should match")

        let result2 = model.longestSubstring(str: "thisisawesome")
        XCTAssertEqual(result2, 6, "result should match")
        
        let result3 = model.longestSubstring(str: "thecatinthehat")
        XCTAssertEqual(result3, 7, "result should match")
        
        let result4 = model.longestSubstring(str: "bbbb")
        XCTAssertEqual(result4, 1, "result should match")
        
        let result5 = model.longestSubstring(str: "longestsubstring")
        XCTAssertEqual(result5, 8, "result should match")

        let result6 = model.longestSubstring(str: "thisishowwedoit")
        XCTAssertEqual(result6, 6, "result should match")

    }

}
