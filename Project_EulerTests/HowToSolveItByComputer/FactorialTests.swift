//
//  FactorialTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/1/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class FactorialTests: XCTestCase {
    var model: FactorialComputation!
    override func setUp() {
        super.setUp()
        model = FactorialComputation()
    }
    
    override func tearDown() {
        super.tearDown()
        model = nil
    }
    
    func testFactorail() {
        let inputNumber = -9
        var factorial1 = 0.0
        var factorial2 = 0.0
        do {
            model.timeComplexity.startTime()
            factorial1 = try model.factorialOf(number: inputNumber)
            model.timeComplexity.endTime(forMethod: "factorialOf")
        } catch FactorialError.InvalidNumber(let description) {
            print(description)
        } catch let error {
            print(error)
        }
        
        do {
            model.timeComplexity.startTime()
            factorial2 = try model.factorialByRecursion(number: inputNumber)
            model.timeComplexity.endTime(forMethod: "factorialByRecursion")
            XCTAssertEqual(factorial1, factorial2)
            print(factorial2)
        } catch FactorialError.InvalidNumber(let description) {
            print(description)
        } catch let error {
            print(error)
        }
    }
}
