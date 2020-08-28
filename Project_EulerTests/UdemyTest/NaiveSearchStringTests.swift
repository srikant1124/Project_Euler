//
//  NaiveSearchStringTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class NaiveSearchStringTests: XCTestCase {
    var model: NaiveSearchString!
    
    override func setUpWithError() throws {
        super.setUp()
        model = NaiveSearchString()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        model = nil
    }

    func testExample() throws {
        let result = model.searchString("lo", mainSting: "lorie loled")
        XCTAssertEqual(result, 2, "Count should match")
        
        let result2 = model.searchString("lol", mainSting: "lorie loled")
        XCTAssertEqual(result2, 1, "Count should match")
        
        let result3 = model.searchString("loll", mainSting: "lorie loled")
        XCTAssertEqual(result3, 0, "Count should match")
        
        let result4 = model.searchString("lorie loled", mainSting: "lor")
        XCTAssertEqual(result4, 0, "Count should match")
        
        let result5 = model.searchString("lorie loled", mainSting: "")
        XCTAssertEqual(result5, 0, "Count should match")
        let result6 = model.searchString("", mainSting: "")
        XCTAssertEqual(result6, 1, "Count should match")
        let result7 = model.searchString("loled", mainSting: "lorie loled")
        XCTAssertEqual(result7, 1, "Count should match")
        let result8 = model.searchString("123", mainSting: "1234567890")
        XCTAssertEqual(result8, 1, "Count should match")

    }
}
