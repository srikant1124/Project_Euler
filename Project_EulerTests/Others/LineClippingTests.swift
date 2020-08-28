//
//  LineClippingTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 6/12/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class LineClippingTests: XCTestCase {

    var rectangle: Rectangle!
    var lineClip: LineClipping!
    
    override func setUp() {
        super.setUp()
        lineClip = LineClipping()
        rectangle = Rectangle(xMin: 4, yMin: 4, xMax: 10, yMax: 8)
    }

    override func tearDown() {
        super.tearDown()
        rectangle = nil
        lineClip = nil
    }

    func Example() {
        let inputLine1 = Line(point1: Point(xCord: 5, yCord: 5), point2: Point(xCord: 7, yCord: 7))
        let result = lineClip.isLinePartiallyIntersected(inputLine: inputLine1, rectangle: rectangle)
        XCTAssertTrue(result, "It should be True")
    }
    
    func Example1() {
        let inputLine2 = Line(point1: Point(xCord: 7, yCord: 9), point2: Point(xCord: 11, yCord: 4))
        let result = lineClip.isLinePartiallyIntersected(inputLine: inputLine2, rectangle: rectangle)
        XCTAssertTrue(result, "It should be True")
    }
    
    func Example2() {
        let inputLine3 = Line(point1: Point(xCord: 1, yCord: 5), point2: Point(xCord: 4, yCord: 1))
        let result = lineClip.isLinePartiallyIntersected(inputLine: inputLine3, rectangle: rectangle)
        XCTAssertTrue(result, "It should be True")
    }
}
