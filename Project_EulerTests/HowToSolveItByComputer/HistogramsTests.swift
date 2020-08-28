//
//  HistogramsTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/23/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class HistogramsTests: XCTestCase {

    func testFrequency() {
        let result = Histogram.findFrequencyOfMark(marks: [1,2,2,3,4,4,4,5,6,6,7,7,7,7,8,9], fullMark: 10)
        XCTAssertEqual(result, [0,1,2,1,3,1,2,4,1,1])
    }
    
    func testPercentileFrequency() {
        let result = Histogram.findFrequencyOfPercentage(marks: [9,8,7,11,12,19,22,40,60,61,62,63,71,79,80,82,85,92],
                                                         percentile: 10,
                                                         fullMark: 100)
        XCTAssertEqual(result, [3,3,1,0,1,0,4,2,3,1])
    }
    
    func testMean() {
        let marks = [10, 20, 36, 92, 95, 40, 50, 56, 60, 70, 92, 88, 80, 70, 72, 70, 36, 40, 36, 40, 92, 40, 50, 50, 56, 60, 70, 60, 60, 88]
        let result = Histogram.findFrequencyOfMark(marks: marks, fullMark: 100)
        let mean = Histogram.mean(freArr: result)
        XCTAssertEqual(mean, 59.3)
        
        let median = Histogram.median(dataArr: marks)
        XCTAssertEqual(median, 54)
    }
}
