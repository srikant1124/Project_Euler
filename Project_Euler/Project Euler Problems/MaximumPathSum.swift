//
//  MaximumPathSum.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/23/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct MaximumPathSum {
 
    let lastRowRawData = "04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
    let rawdata = "75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 95 64 0 0 0 0 0 0 0 0 0 0 0 0 0 17 47 82 0 0 0 0 0 0 0 0 0 0 0 0 18 35 87 10 0 0 0 0 0 0 0 0 0 0 0 20 04 82 47 65 0 0 0 0 0 0 0 0 0 0 19 01 23 75 03 34 0 0 0 0 0 0 0 0 0 88 02 77 73 07 63 67 0 0 0 0 0 0 0 0 99 65 04 28 06 16 70 92 0 0 0 0 0 0 0 41 41 26 56 83 40 80 70 33 0 0 0 0 0 0 41 48 72 33 47 32 37 16 94 29 0 0 0 0 0 53 71 44 65 25 43 91 52 97 51 14 0 0 0 0 70 11 33 28 77 73 17 78 39 68 17 57 0 0 0 91 71 52 38 17 14 91 43 58 50 27 29 48 0 0 63 66 04 68 89 53 67 30 73 16 69 87 40 31 0 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
    
//    let rawdata = "3 0 0 0 7 4 0 0 2 4 6 0 8 5 9 3"
//    let lastRowRawData = "8 5 9 3"
    var matrix: [[Int]]!
    var maxLength = 0
    var actualData = [Substring]()
    mutating func prepareMatrix() {
        
        let lastRow = lastRowRawData.split(separator: " ")
        maxLength = lastRow.count
        matrix = Array(repeating: Array(repeating: 0, count: maxLength), count: maxLength)
        actualData = rawdata.split(separator: " ")
        
        var index = 0
        for indexI in 0..<maxLength {
            for indexJ in 0..<maxLength {
                let value = Int(actualData[index])!
                matrix[indexI][indexJ] = value
                index += 1
            }
        }
    }
    
    func getValuesFrom(fromIndex: Int, count: Int) -> Int {
        return 0
    }
    
    mutating func solveTheProblem() -> Int {
        for indexI in stride(from: maxLength - 2, to: -1, by: -1) {
            for indexJ in 0..<maxLength - 1 {
                let value = matrix[indexI][indexJ]
                let value1 = matrix[indexI + 1][indexJ]
                let value2 = matrix[indexI + 1][indexJ + 1]
                if value2 > value1 {
                    matrix[indexI][indexJ] = value2 + value
                } else {
                    matrix[indexI][indexJ] = value1 + value
                }
            }
        }
        print("Sum = \(matrix[0][0])")
        return matrix[0][0]
    }
    
    func printmatrix() {
        for indexI in 0..<maxLength {
            for indexJ in 0..<maxLength {
                let value = matrix[indexI][indexJ]
                print(value, separator: " ", terminator: "  ")
            }
            print("\n")
        }
    }
}
