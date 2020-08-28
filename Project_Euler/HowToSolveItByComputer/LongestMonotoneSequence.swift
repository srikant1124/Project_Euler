//
//  LongestMonotoneSequence.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/2/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct LongestMonotoneSequence {
    static func findLengthOfLongestMonotoneSequence(arr: inout [Int]) -> Int {
        var lengthArray = Array(repeating: 0, count: arr.count)
        var maxIndex = 0
        lengthArray[0] = 1
        
        for index in 1..<arr.count {
            if arr[index] > arr[maxIndex] {
                lengthArray[index] = lengthArray[maxIndex] + 1
                maxIndex = index
            } else {
                var localMaxIndex = -1
                /// FInding the Max value from length Array where arr[index] < selected value
                let selectedValue = arr[index]
                for iIndex in 0..<index {
                    if lengthArray[iIndex] > localMaxIndex && selectedValue > arr[iIndex] {
                        localMaxIndex = iIndex
                    }
                }
                if localMaxIndex > -1 {
                    lengthArray[index] = lengthArray[localMaxIndex] + 1
                    if lengthArray[maxIndex] <= lengthArray[index] {
                        maxIndex = index
                    }
                } else {
                    lengthArray[index] += 1
                }
            }
        }
        print(arr)
        print("\n")
        print(lengthArray)
        print("Number = \(arr[maxIndex]) and Longest Monotone Sequence Length = \(lengthArray[maxIndex])")
        return lengthArray[maxIndex]
    }
}
