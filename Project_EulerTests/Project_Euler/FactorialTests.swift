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
    var factModel: FactorialComputation!
    override func setUp() {
        super.setUp()
        factModel = FactorialComputation()
    }
    
    override func tearDown() {
        super.tearDown()
        factModel = nil
    }
    
    func testFactorail() {
        let number = -9
        var factorial1 = 0.0
        var factorial2 = 0.0
        do {
            factModel.timeComplexity.startTime()
            factorial1 = try factModel.factorialOf(number: number)
            factModel.timeComplexity.endTime(forMethod: "factorialOf")
        } catch FactorialError.InvalidNumber(let description) {
            print(description)
        } catch let error {
            print(error)
        }
        
        do {
            factModel.timeComplexity.startTime()
            factorial2 = try factModel.factorialByRecursion(number: number)
            factModel.timeComplexity.endTime(forMethod: "factorialByRecursion")
            XCTAssertEqual(factorial1, factorial2)
            print(factorial2)
        } catch FactorialError.InvalidNumber(let description) {
            print(description)
        } catch let error {
            print(error)
        }
    }
    
}
