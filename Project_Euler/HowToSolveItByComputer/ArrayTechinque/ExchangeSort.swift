//
//  ExchangeSort.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/16/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ExchangeSort {
    static func sort(arr: inout [Int], order: Order) {
        if order == .ascending {
            sortAscending(arr: &arr)
        } else {
            sortDescending(arr: &arr)
        }
    }
    
    /// Used While Loop
    private static func sortAscending(arr: inout [Int]) {
        var isSorting = true
        let maxLoopCount = arr.count - 2
        var indexI = 0
        while indexI <= maxLoopCount && isSorting {
            isSorting = false
            for indexJ in 0...(maxLoopCount - indexI) {
                if arr[indexJ] > arr[indexJ+1] {
                    swap(arr: &arr, index: indexJ)
                    isSorting = true
                }
            }
            indexI += 1
        }
    }
    
    //// Used For loop
    private static func sortDescending(arr: inout [Int]) {
        var swapped = true
        let arrCount = arr.count
        for indexI in stride(from: arrCount - 2, to: -1, by: -1) {
            if swapped {
                swapped = false
                for indexJ in 0...indexI {
                    if arr[indexJ] < arr[indexJ+1] {
                        swap(arr: &arr, index: indexJ)
                        swapped = true
                    }
                }
            } else {
                break
            }
        }
    }
    
    private static func swap(arr: inout [Int], index: Int) {
        let temp = arr[index]
        arr[index] = arr[index + 1]
        arr[index + 1] = temp
    }
}
