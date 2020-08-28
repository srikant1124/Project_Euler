//
//  BinarySearch.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct BinarySearch {
    
    /// This is very Generic Binary Search Algorithm
    /// - Parameters:
    ///   - value: Search Value
    ///   - arr: Data input with Ascending or Descending Array
    /// - Returns: Retun the valid Index else retun -1 for not found
    func binarySearch<T: Comparable>(_ value: T, arr: [T]) -> Int {
        if arr.isEmpty { return -1 }
        let lastIndex = arr.count - 1
        let isReversOrder = arr[lastIndex] < arr[0]
        var leftIndex = 0
        var rightIndex = lastIndex
        while leftIndex <= rightIndex {
            let middleIndex = (leftIndex + rightIndex) / 2
            let result = arr[middleIndex]
            if result == value {
                return middleIndex
            } else if result > value {
                isReversOrder ? (leftIndex = middleIndex + 1) : (rightIndex = middleIndex - 1)
            } else {
                isReversOrder ? (rightIndex = middleIndex - 1) : (leftIndex = middleIndex + 1)
            }
        }
        return -1
    }
}
