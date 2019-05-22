//
//  PerfectNumberTest.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/15/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class PerfectNumberTest: XCTestCase {
    
    func testPerfectNumbers() {
//        let result = PerfectNumber.findPerfectNumbersWithin(range: 1000000000)
//        print(result)
        //XCTAssertEqual(result, true)
        
        let value = PerfectNumber.isPerfectNumber(number: 137438691328)// //2305843008139952128
        XCTAssertEqual(value, true)
    }
    
}
