//
//  LongestCollatzSequence.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/18/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct LongestCollatzSequence {
    
    /// Longest Collatz Sequence
    ///==========================>> BRUTE FORCE
    /// - Parameter number: number
    /// - Returns:  Number with Maximum Count
    static func longestCollatzSequence(number: Int) -> Int {
        var maxCount = 0
        var maxNumber = 0
        for eachNo in 2...number {
            var chainValue = eachNo
            var count = 1
            while chainValue != 1 {
                if chainValue % 2 == 0 {
                    chainValue = chainValue / 2
                } else {
                    chainValue = (chainValue * 3) + 1
                }
                count += 1
            }
            if count > maxCount {
                maxCount = count
                maxNumber = eachNo
            }
        }
        print("Number : \(maxNumber), count : \(maxCount)")
        return maxNumber
    }
    
    ///==========================>> OPTIMIZED WITH EXTRA STORAGE
    static func longestCollatzSequenceWithExtraStorage(number: Int) -> Int {
        var cacheArr = Array(repeating: 0, count: number + 1)
        var maxCount = 0
        var maxNumber = 0
        for eachNo in 2...number {
            var chainValue = eachNo
            var count = 1
            while chainValue != 1 {
                if chainValue % 2 == 0 {
                    chainValue = chainValue / 2
                } else {
                    chainValue = (chainValue * 3) + 1
                }
                if cacheArr.count > chainValue {
                    let cacheCount = cacheArr[chainValue]
                    if cacheCount > 0 {
                        count += cacheCount
                        break
                    }
                }
                count += 1
            }
            cacheArr[eachNo] = count
            if count > maxCount {
                maxCount = count
                maxNumber = eachNo
            }
        }
        print("Number : \(maxNumber), count : \(maxCount)")
        return maxNumber
    }
}
