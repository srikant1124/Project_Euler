//
//  BinarySearchTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class BinarySearchTests: XCTestCase {
    var model:  BinarySearch!
    override func setUpWithError() throws {
        super.setUp()
        model = BinarySearch()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        model = nil
    }

    func testExample() throws {
        let result = model.binarySearch(3, arr: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        XCTAssertEqual(result, 2, "Result should found")
        
        let resul2 = model.binarySearch(11, arr: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        XCTAssertEqual(resul2, -1, "Result should not found")
        
        let resul3 = model.binarySearch(7, arr: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].reversed())
        XCTAssertEqual(resul3, 3, "Result should not found")
        
        let resul4 = model.binarySearch("apple", arr: ["apple", "ball", "cat", "dog", "egg", "goat"])
        XCTAssertEqual(resul4, 0, "Result should  found")
        
        let resul5 = model.binarySearch("goat", arr: ["apple", "ball", "cat", "dog", "egg", "goat"])
        XCTAssertEqual(resul5, 5, "Result should  found")
        
        let resul6 = model.binarySearch("ball", arr: ["apple", "ball", "cat", "dog", "egg", "goat"])
        XCTAssertEqual(resul6, 1, "Result should  found")

        let resul7 = model.binarySearch("ball", arr: ["apple", "ball", "cat", "dog", "egg", "goat"].reversed())
        XCTAssertEqual(resul7, 4, "Result should  found")
        
        let resul8 = model.binarySearch("apple", arr: ["apple", "ball", "cat", "dog", "egg", "goat"].reversed())
        XCTAssertEqual(resul8, 5, "Result should  found")

        let resul9 = model.binarySearch("goat", arr: ["apple", "ball", "cat", "dog", "egg", "goat"].reversed())
        XCTAssertEqual(resul9, 0, "Result should  found")

        let resul10 = model.binarySearch("goat", arr: ["apple"].reversed())
        XCTAssertEqual(resul10, -1, "Result should  found")

        let resul11 = model.binarySearch("goat", arr: [].reversed())
        XCTAssertEqual(resul11, -1, "Result should  found")

        let resul12 = model.binarySearch("", arr: ["apple", "ball", "cat", "dog", "egg", "goat"])
        XCTAssertEqual(resul12, -1, "Result should  found")

        let resul13 = model.binarySearch("", arr: ["", "apple", "ball", "cat", "egg", "goat"])
        XCTAssertEqual(resul13, 0, "Result should  found")

    }

}
