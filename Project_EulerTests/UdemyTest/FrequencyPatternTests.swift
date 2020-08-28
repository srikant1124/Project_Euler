//
//  FrequencyPatternTests.swift
//  Udemy_Algo_DS_Masterclass_Colt_SteeleTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/26/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Udemy_Algo_DS_Masterclass_Colt_Steele

class FrequencyPatternTests: XCTestCase {
    var model: FrequencyPattern!
    
    override func setUpWithError() throws {
        super.setUp()
        model = FrequencyPattern()
    }
    
    override func tearDownWithError() throws {
        super.tearDown()
        model = nil
    }
    
    func testSameFrequency() throws {
        let result = model.sameFrequency(firstNumber: 182, secondNumber: 281)
        XCTAssertTrue(result, "It should Success")
        
        let result1 = model.sameFrequency(firstNumber: 34, secondNumber: 14)
        XCTAssertFalse(result1, "It should Success")
        
        let result2 = model.sameFrequency(firstNumber: 3589578, secondNumber: 5879385)
        XCTAssertTrue(result2, "It should Success")
        
        let result3 = model.sameFrequency(firstNumber: 22, secondNumber: 222)
        XCTAssertFalse(result3, "It should Success")
    }
    
    func testSameFrequency2() throws {
        let result = model.sameFrequency_Optimized(firstNumber: 182, secondNumber: 281)
        XCTAssertTrue(result, "It should Success")
        
        let result1 = model.sameFrequency_Optimized(firstNumber: 34, secondNumber: 14)
        XCTAssertFalse(result1, "It should Success")
        
        let result2 = model.sameFrequency_Optimized(firstNumber: 3589578, secondNumber: 5879385)
        XCTAssertTrue(result2, "It should Success")
        
        let result3 = model.sameFrequency_Optimized(firstNumber: 22, secondNumber: 222)
        XCTAssertFalse(result3, "It should Success")
    }
    
    func testIsAnagram1() throws {
        let result = model.isAnagram(stringOne: nil, stringTwo: nil)
        XCTAssertFalse(result)
        let result2 = model.isAnagram(stringOne: "", stringTwo: "")
        XCTAssertTrue(result2)
        let result3 = model.isAnagram(stringOne: "cool", stringTwo: "")
        XCTAssertFalse(result3)
        let result4 = model.isAnagram(stringOne: "cool", stringTwo: "")
        XCTAssertFalse(result4)

        let result5 = model.isAnagram(stringOne: "cool", stringTwo: "cool")
        XCTAssertTrue(result5)

        let result6 = model.isAnagram(stringOne: " ", stringTwo: " ")
        XCTAssertTrue(result6)

        let result7 = model.isAnagram(stringOne: "azz", stringTwo: "aaz")
        XCTAssertFalse(result7)

        let result8 = model.isAnagram(stringOne: "awesome", stringTwo: "awesom")
        XCTAssertFalse(result8)

        let result9 = model.isAnagram(stringOne: "qwerty", stringTwo: "qeywrt")
        XCTAssertTrue(result9)

        let result10 = model.isAnagram(stringOne: "texttwisttime", stringTwo: "timetwisttext")
        XCTAssertTrue(result10)

    }
    
    func testIsAnagramOptimized() throws {
        let result = model.isAnagram_optimized(stringOne: nil, stringTwo: nil)
        XCTAssertFalse(result)
        let result2 = model.isAnagram_optimized(stringOne: "", stringTwo: "")
        XCTAssertTrue(result2)
        let result3 = model.isAnagram_optimized(stringOne: "cool", stringTwo: "")
        XCTAssertFalse(result3)
        let result4 = model.isAnagram_optimized(stringOne: "cool", stringTwo: "")
        XCTAssertFalse(result4)
        
        let result5 = model.isAnagram_optimized(stringOne: "cool", stringTwo: "cool")
        XCTAssertTrue(result5)
        
        let result6 = model.isAnagram_optimized(stringOne: " ", stringTwo: " ")
        XCTAssertTrue(result6)
        
        let result7 = model.isAnagram_optimized(stringOne: "azz", stringTwo: "aaz")
        XCTAssertFalse(result7)
        
        let result8 = model.isAnagram_optimized(stringOne: "awesome", stringTwo: "awesom")
        XCTAssertFalse(result8)
        
        let result9 = model.isAnagram_optimized(stringOne: "qwerty", stringTwo: "qeywrt")
        XCTAssertTrue(result9)
        
        let result10 = model.isAnagram_optimized(stringOne: "texttwisttime", stringTwo: "timetwisttext")
        XCTAssertTrue(result10)
        
    }
    
    func testCountUniqueValues() throws {
        let result = model.countUniqueValues(arr: [])
        XCTAssertEqual(result, 0, "It should match")
        let result1 = model.countUniqueValues(arr: nil)
        XCTAssertEqual(result1, 0, "It should match")
        let result2 = model.countUniqueValues(arr: [1,2,2,3,4,4])
        XCTAssertEqual(result2, 4, "It should match")
        let result3 = model.countUniqueValues(arr: [1,1,1,1,1,2])
        XCTAssertEqual(result3, 2, "It should match")
        let result4 = model.countUniqueValues(arr: [1,2,3,4,4,4,7,7,12,12,13])
        XCTAssertEqual(result4, 7, "It should match")
        let result5 = model.countUniqueValues(arr: [-2,-1,-1,0,1])
        XCTAssertEqual(result5, 4, "It should match")
    }
    
    func testFirstNotRepeatingCharacter() throws {
        let result = model.firstNotRepeatingCharacter(s: "abacabad")
        XCTAssertEqual(result, "c", "It should match")
        
        let result1 = model.firstNotRepeatingCharacter(s: "z")
        XCTAssertEqual(result1, "z", "It should match")
    }
    
}
