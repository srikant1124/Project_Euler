//
//  GenericStackTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/30/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class GenericStackTests: XCTestCase {
    var stack: Stack<Any>!
    override func setUp() {
        super.setUp()
        stack = Stack<Any>()
    }
    
    override func tearDown() {
        super.tearDown()
        stack = nil
    }
    
    func testPush() {
        stack?.push(value: 1)
        if let value = stack?.top() as? Int {
            XCTAssertEqual(value, 1)
        } else {
            XCTFail("It should fail")
        }
        stack?.push(value: Double(3.9))
        if let value = stack?.top() as? Double {
            XCTAssertEqual(value, 3.9)
        } else {
            XCTFail("It should fail")
        }
        
        stack?.push(value: "Srikant")
        if let value = stack?.top() as? String {
            XCTAssertEqual(value, "Srikant")
        } else {
            XCTFail("It should fail")
        }
        
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 3)
        stack?.pop()
        XCTAssertEqual(stack.count, 2)
        stack?.pop()
        XCTAssertEqual(stack.count, 1)
        stack?.pop()
        XCTAssertEqual(stack.count, 0)
        stack?.pop()
        XCTAssertTrue(stack.isEmpty)
    }
    
    func testPop() {
        stack?.push(value: 1)
        stack?.push(value: Double(3.9))
        stack?.push(value: "Srikant")
        
        if let value = stack?.pop() as? String {
            XCTAssertEqual(value, "Srikant")
        } else {
            XCTFail("It should fail")
        }
        
        if let value = stack?.pop() as? Double {
            XCTAssertEqual(value, 3.9)
        } else {
            XCTFail("It should fail")
        }
    }
    
    func testTop() {
        stack?.push(value: 1)
        if let value = stack?.top() as? Int {
            XCTAssertEqual(value, 1)
        } else {
            XCTFail("It should fail")
        }
    }
    
}
