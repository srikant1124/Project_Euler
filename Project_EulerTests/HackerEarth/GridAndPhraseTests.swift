//
//  GridAndPhraseTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/4/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class GridAndPhraseTests: XCTestCase {
    
    var model: GridAndPhrase!
    override func setUp() {
        super.setUp()
        model = GridAndPhrase()
    }
    
    override func tearDown() {
        super.tearDown()
        model = nil
    }
    func testEmptyGrid() {
        let inputString = "saferamjadbabolaaronsongs"
        let searchingString = "saba"
        let matchingCount = model.getMatchingCounts(for: searchingString, inputString: inputString)
        XCTAssertEqual(matchingCount, 2)
    }
}
