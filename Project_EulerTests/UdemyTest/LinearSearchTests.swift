//
//  LinearSearchTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class LinearSearchTests: XCTestCase {
    var model: LinearSearch!
    
    override func setUpWithError() throws {
        super.setUp()
        model = LinearSearch()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        model = nil
    }

    func testExample() throws {
        let result = model.linearSearch(15, arr: [10, 15, 20, 25, 30])
        XCTAssertEqual(result, 1, "Result Should Match")
        
        let result1 = model.linearSearch(4, arr: [9, 8, 7, 6, 5, 4, 3, 2, 2, 0])
        XCTAssertEqual(result1, 5, "Result Should Match")

        let result2 = model.linearSearch(100, arr: [100])
        XCTAssertEqual(result2, 0, "Result Should Match")

        let result3 = model.linearSearch(6, arr: [1, 2, 3, 4, 5])
        XCTAssertEqual(result3, -1, "Result Should Match")

        let result4 = model.linearSearch(10, arr: [9, 8, 7, 6, 5, 4, 3, 2, 1, 0])
        XCTAssertEqual(result4, -1, "Result Should Match")

        let result5 = model.linearSearch(100, arr: [200])
        XCTAssertEqual(result5, -1, "Result Should Match")
        
        let result6 = model.linearSearch("dora", arr: ["sumi", "rosy", "sini", "Sunilkant Jena", "nana"])
        XCTAssertEqual(result6, -1, "Result Should Match")

        let result7 = model.linearSearch("sini", arr: ["sumi", "rosy", "sini", "Sunilkant Jena", "nana"])
        XCTAssertEqual(result7, 2, "Result Should Match")

    }
}
