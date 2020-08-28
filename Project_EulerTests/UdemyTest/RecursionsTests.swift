//
//  RecursionsTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/26/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class RecursionsTests: XCTestCase {
    var model: Recursions!
    
    override func setUpWithError() throws {
        super.setUp()
        model = Recursions()
    }
    
    override func tearDownWithError() throws {
        super.tearDown()
        model = nil
    }
    
    func testExample() throws {
        let result = model.findOddNumbers(arr: [1,2,3,4,5,6])
        XCTAssertEqual(result, [1, 3, 5], "Result should match")
    }
    
    func testPowes() throws {
        let result = model.power(number: 3, pow: 3)
        XCTAssertEqual(result, 27, "Result should match")
        
        let result1 = model.power(number: 4, pow: 2)
        XCTAssertEqual(result1, 16, "Result should match")
        
        let result2 = model.power(number: 2, pow: 3)
        XCTAssertEqual(result2, 8, "Result should match")
        
        let result3 = model.power(number: 12, pow: 4)
        XCTAssertEqual(result3, 20736, "Result should match")
    }
    
    func testFactorial() throws {
        let result = model.factorial(number: 3)
        XCTAssertEqual(result, 6, "Result should match")
        
        let result1 = model.factorial(number: 4)
        XCTAssertEqual(result1, 24, "Result should match")
        
        let result2 = model.factorial(number: 7)
        XCTAssertEqual(result2, 5040, "Result should match")
        
        let result3 = model.factorial(number: 2)
        XCTAssertEqual(result3, 2, "Result should match")
        
        let result4 = model.factorial(number: 1)
        XCTAssertEqual(result4, 1, "Result should match")
        
        let result5 = model.factorial(number: 0)
        XCTAssertEqual(result5, 1, "Result should match")
    }
    
    func testSum() throws {
        let result = model.sumOfArray(arr: [6,3,4,5,6])
        XCTAssertEqual(result, 24, "Result should match")
        
        let result1 = model.sumOfArray(arr: [10,3,4,5,6])
        XCTAssertEqual(result1, 28, "Result should match")
        
        let result2 = model.sumOfArray(arr: [])
        XCTAssertEqual(result2, 0, "Result should match")
        
        let result3 = model.sumOfArray(arr: [20])
        XCTAssertEqual(result3, 20, "Result should match")
        
    }
    
    func testProduct() throws {
        let result = model.productOfArray(arr: [1,2,3,4])
        XCTAssertEqual(result, 24, "Result should match")
        
        let result1 = model.productOfArray(arr: [10,3,10])
        XCTAssertEqual(result1, 300, "Result should match")
        
        let result3 = model.productOfArray(arr: [20])
        XCTAssertEqual(result3, 20, "Result should match")
        
    }
    
    func testProductHelper() throws {
        let result = model.productOfArray_Helper(arr: [1,2,3,4])
        XCTAssertEqual(result, 24, "Result should match")
        
        let result1 = model.productOfArray_Helper(arr: [10,3,10])
        XCTAssertEqual(result1, 300, "Result should match")
        
        let result2 = model.productOfArray_Helper(arr: [])
        XCTAssertEqual(result2, 0, "Result should match")
        
        let result3 = model.productOfArray_Helper(arr: [20])
        XCTAssertEqual(result3, 20, "Result should match")
        
    }
    
    func testRecursiveRange() throws {
        let result = model.recursiveRange(number: 6)
        XCTAssertEqual(result, 21, "Result should match")
        
        let result1 = model.recursiveRange(number: 10)
        XCTAssertEqual(result1, 55, "Result should match")
    }
    
    func testFibonacciAtPosition() throws {
        let result = model.fibAtPosition(number: 4)
        XCTAssertEqual(result, 3, "Result should match")
        
        let result1 = model.fibAtPosition(number: 10)
        XCTAssertEqual(result1, 55, "Result should match")
        
        let result2 = model.fibAtPosition(number: 28)
        XCTAssertEqual(result2, 317811, "Result should match")
        
        let result3 = model.fibAtPosition(number: 35)
        XCTAssertEqual(result3, 9227465, "Result should match")
    }
    
    func testReverse() throws {
        let result = model.reverse(str: "awesome")
        XCTAssertEqual(result, "emosewa", "Result should match")
        
        let result1 = model.reverse(str: "rithmschool")
        XCTAssertEqual(result1, "loohcsmhtir", "Result should match")
        
        let result2 = model.reverse(str: "a")
        XCTAssertEqual(result2, "a", "Result should match")
        
        let result3 = model.reverse(str: "")
        XCTAssertEqual(result3, "", "Result should match")
        
        let result4 = model.reverse(str: " ")
        XCTAssertEqual(result4, " ", "Result should match")
    }
    
    func testPalindrum() throws {
        let result = model.isPalindrome(str: "awesome")
        XCTAssertFalse(result, "Result should match")
        
        let result1 = model.isPalindrome(str: "rithmschool")
        XCTAssertFalse(result1, "Result should match")
        
        let result2 = model.isPalindrome(str: "tacocat")
        XCTAssertTrue(result2, "Result should match")
        
        let result3 = model.isPalindrome(str: "amanaplanacanalpanama")
        XCTAssertTrue(result3, "Result should match")
        
        let result4 = model.isPalindrome(str: "amanaplanacanalpandemonium")
        XCTAssertFalse(result4, "Result should match")
    }
}
