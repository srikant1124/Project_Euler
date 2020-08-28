//
//  SumZeroTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/22/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele
class SumZeroTests: XCTestCase {
    var sumZero: SumZero!
    override func setUpWithError() throws {
        super.setUp()
        sumZero = SumZero()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        sumZero = nil
    }

    func testExample() throws {
        if let _ = sumZero.sumZero(arr: nil) {
            XCTAssertFalse(false, "It should not pass")
        } else {
            XCTAssertTrue(true, "It should fail")
        }
        
        if let _ = sumZero.sumZero(arr: []) {
            XCTAssertFalse(false, "It should not pass")
        } else {
            XCTAssertTrue(true, "It should fail")
        }
        
        if let result2 = sumZero.sumZero(arr: [-4,-3,-2,-1,0,1,2,3,5]) {
            XCTAssertEqual(result2.0, -3, "Result should match")
            XCTAssertEqual(result2.1, 3, "Result should match")
        } else {
            XCTFail("It Should not fail")
        }
        
        if let _ = sumZero.sumZero(arr: [-4,-3,-2,-1,0,1,5]) {
            XCTAssertFalse(false, "It should not pass")
        } else {
            XCTAssertTrue(true, "It should fail")
        }
        
        if let _ = sumZero.sumZero(arr: [-4,-3,-2,-1,0,5,10]) {
            XCTAssertFalse(false, "It should not pass")
        } else {
            XCTAssertTrue(true, "It should fail")
        }
    }

}
