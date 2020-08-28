//
//  AveragePairTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class AveragePairTests: XCTestCase {
    var model: AveragePair!
    override func setUpWithError() throws {
        super.setUp()
        model = AveragePair()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        model = nil
    }

    func testExample() throws {
        let result = model.averagePair(arr: [1,2,3], target: 2.5)
        XCTAssertTrue(result, "It should be true")
        
        let result1 = model.averagePair(arr: [1,3,3,5,6,7,10,12,19], target: 8)
        XCTAssertTrue(result1, "It should be true")
        
        let result2 = model.averagePair(arr: [-1,0,3,4,5,6], target: 4.1)
        XCTAssertFalse(result2, "It should be false")

        let result3 = model.averagePair(arr: [], target: 4)
        XCTAssertFalse(result3, "It should be false")


    }
}
