//
//  LatticePathsTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/19/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class LatticePathsTests: XCTestCase {
    var latticPath: LatticePaths!
    override func setUp() {
        super.setUp()
        latticPath = LatticePaths()
    }

    override func tearDown() {
        super.tearDown()
        latticPath = nil
    }

    func testLatticepath() {
        let result = latticPath.getTotalLatticepPath(matrixRow: 1, matrixCol: 1)
        XCTAssertEqual(result, 2)
        
        let result1 = latticPath.getTotalLatticepPath(matrixRow: 2, matrixCol: 2)
        XCTAssertEqual(result1, 6)
        
        let result2 = latticPath.getTotalLatticepPath(matrixRow: 3, matrixCol: 3)
        XCTAssertEqual(result2, 20)
        
        let result3 = latticPath.getTotalLatticepPath(matrixRow: 4, matrixCol: 4)
        XCTAssertEqual(result3, 70)
        
        let result4 = latticPath.getTotalLatticepPath(matrixRow: 5, matrixCol: 5)
        XCTAssertEqual(result4, 252)
        
        let result5 = latticPath.getTotalLatticepPath(matrixRow: 6, matrixCol: 6)
        XCTAssertEqual(result5, 924)
        
        let result6 = latticPath.getTotalLatticepPath(matrixRow: 7, matrixCol: 7)
        XCTAssertEqual(result6, 3432)
    }
    
    func testCountLength() {
        let result = latticPath.getCountOfpaths(number: 1)
        XCTAssertEqual(result, 2.0)
        
        let result1 = latticPath.getCountOfpaths(number: 2)
        XCTAssertEqual(result1, 6.0)
        
        let result2 = latticPath.getCountOfpaths(number: 3)
        XCTAssertEqual(result2, 20.0)
        
        let result3 = latticPath.getCountOfpaths(number: 4)
        XCTAssertEqual(result3, 70.0)
        
        let result4 = latticPath.getCountOfpaths(number: 5)
        XCTAssertEqual(result4, 252.0)
        
        let result5 = latticPath.getCountOfpaths(number: 20)
        XCTAssertEqual(result5, 137846528820.0)
    }

}
