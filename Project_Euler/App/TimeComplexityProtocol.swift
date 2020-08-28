//
//  TimeComplexityProtocol.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 4/18/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct TimeComplexity {
    /// - private' modifier cannot be used for a protocols
    /// - Initial value is not allowed here
    /// - Default argument not permitted for a protocol method
    var start = CFAbsoluteTimeGetCurrent()
    var end = CFAbsoluteTimeGetCurrent()
    var firstLoop = 0
    var nestedloop = 0
    var extraLoop = 0
}

extension TimeComplexity {
    mutating func initializeLoopsCount() {
        firstLoop = 0
        nestedloop = 0
        extraLoop = 0
    }
    
    mutating func startTime() {
        start = CFAbsoluteTimeGetCurrent()
        //initializeLoopsCount()
    }
    
    mutating func endTime(forMethod name: String, needToShowTheTimeDifference boolValue: Bool = true) {
        end = CFAbsoluteTimeGetCurrent()
        if boolValue {
            let timeDifference = end - start
            let formattedString = String(format: "%0.7f", timeDifference)
            print("\(name) = \(formattedString) Seconds\n")
            if firstLoop > 0 {
                print("No of firstLoop: \(firstLoop)\n")
            }
            if nestedloop > 0 {
                print("No of Nested Loop N*N = \(nestedloop)\n")
            }
            if extraLoop > 0 {
                print("Extra Loop = \(extraLoop)\n")
            }
        }
    }

    mutating func forLooCountsCheck(withLoopCount count: Int) -> Int {
        for _ in 0...count {
            firstLoop += 1
            for _ in 0...count {
                nestedloop += 1
            }
        }
        return nestedloop
    }
    
    mutating func bubbleSort(_ array: [Int]) -> [Int] {
        var arr = array
        for _ in 0..<arr.count {
            firstLoop += 1
            for value in 1..<arr.count {
                nestedloop += 1
                if arr[value-1] > arr[value] {
                    let largerValue = arr[value-1]
                    arr[value-1] = arr[value]
                    arr[value] = largerValue
                }
            }
        }
        return arr
    }
}
