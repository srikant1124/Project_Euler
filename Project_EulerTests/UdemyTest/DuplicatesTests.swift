//
//  DuplicatesTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class DuplicatesTests: XCTestCase {
    var modelInt: Duplicates<Int>!
    var modelString: Duplicates<String>!
    override func setUpWithError() throws {
        super.setUp()
        modelInt = Duplicates()
        modelString = Duplicates()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        modelInt = nil
        modelString = Duplicates()
    }

    func testExample() throws {
        let result = modelInt.areThereDuplicates_TypeOne(arr: [1,2,3])
        XCTAssertFalse(result, "It should be false")
        
        let result1 = modelInt.areThereDuplicates_TypeOne(arr: [1,2,2])
        XCTAssertTrue(result1, "It should be true")
        
        let result2 = modelString.areThereDuplicates_TypeOne(arr: ["a","b","a","c"])
        XCTAssertTrue(result2, "It should be true")

    }
    
    func testExample2() throws {
        let result = modelInt.areThereDuplicates_Optimized(arr: [1,2,3])
        XCTAssertFalse(result, "It should be false")
        
        let result1 = modelInt.areThereDuplicates_Optimized(arr: [1,2,2])
        XCTAssertTrue(result1, "It should be true")
        
        let result2 = modelString.areThereDuplicates_Optimized(arr: ["a","b","a","c"])
        XCTAssertTrue(result2, "It should be true")

    }

}
