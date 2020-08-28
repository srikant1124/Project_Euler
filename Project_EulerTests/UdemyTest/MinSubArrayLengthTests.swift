//
//  MinSubArrayLengthTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class MinSubArrayLengthTests: XCTestCase {
    var model: MinSubArrayLength!
    
    override func setUpWithError() throws {
        super.setUp()
        model = MinSubArrayLength()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        model = nil
    }

    func testExample() throws {
        let result = model.minSubArrayLen(arr: [2,3,1,2,4,3], target: 7)
        XCTAssertEqual(result, 2, "It should match")
        
        let result1 = model.minSubArrayLen(arr: [2,1,6,5,4], target: 9)
        XCTAssertEqual(result1, 2, "It should match")
        
        let result2 = model.minSubArrayLen(arr: [3,1,7,11,2,9,8,21,62,33,19], target: 52)
        XCTAssertEqual(result2, 1, "It should match")

        let result3 = model.minSubArrayLen(arr: [1,4,16,22,5,7,8,9,10], target: 39)
        XCTAssertEqual(result3, 3, "It should match")
        
        let result4 = model.minSubArrayLen(arr: [1,4,16,22,5,7,8,9,10], target: 55)
        XCTAssertEqual(result4, 5, "It should match")

        let result5 = model.minSubArrayLen(arr: [4,3,3,8,1,2,3], target: 11)
        XCTAssertEqual(result5, 2, "It should match")

        let result6 = model.minSubArrayLen(arr: [1,4,16,22,5,7,8,9,10], target: 95)
        XCTAssertEqual(result6, 0, "It should match")

    }
}
