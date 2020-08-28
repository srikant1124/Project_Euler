//
//  DataReader.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 6/20/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class DataReader: XCTestCase {
    func testExample() {
        let reader = School()
        reader.readAFile()
        reader.converToDict()
    }
    
    func FindDuplicate() {
        var values = [1,2,3,2,4,6,9]
        for i in 0..<values.count {
            let index = values[i] % 100
            values[index] += 100
            print(values[index] / 100)
        }
    }
    
    func testCalculation() {
        let arr = [1,2,2,3,4,6,7,8,9]
        var sum = 0
        var count = 0
        var xorSum = 0
        for each in arr {
            sum += each
            count += 1
            xorSum = xorSum ^ each
            print(xorSum)
        }
        print(sum)
        print(count)
        let expectedSum = (count * (count + 1))/2
        print(expectedSum)
        let value = abs(expectedSum - sum)
        if expectedSum > sum {
            print(value)
            //Missing number is greater than duplicate one
        } else {
            print(value)
            //duplicate number is greater than Missing one
        }
        
    }
}
