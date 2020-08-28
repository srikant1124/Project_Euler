//
//  SelectionSort.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/11/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

enum Order {
    case ascending
    case descending
    case none
}

struct SelectionSort {
    static func sortAscending(arr: inout [Int]) {
        let arrLength = arr.count
        for index in 0..<arrLength {
            let temp = arr[index]
            var minIndex = index
            for jIndex in index..<arrLength {
                if arr[jIndex] < arr[minIndex] {
                    minIndex = jIndex
                }
            }
            if index != minIndex {
                swapIndexValues(arr: &arr, index: index, minIndex: minIndex, temp: temp)
            }
        }
    }
    
    static func sortDescending(arr: inout [Int]) {
        let arrLength = arr.count
        for index in 0..<arrLength - 1 {
            let temp = arr[index]
            var minIndex = index
            for jIndex in index..<arrLength {
                if arr[jIndex] > arr[minIndex] {
                    minIndex = jIndex
                }
            }
            if index != minIndex {
                swapIndexValues(arr: &arr, index: index, minIndex: minIndex, temp: temp)
            }
        }
    }
    
   fileprivate static func sort(arr: inout [Int], order: Order) {
        let arrLength = arr.count
        for indexI in 0..<arrLength {
            let temp = arr[indexI]
            var minIndex = indexI
            if order == .ascending {
                for indexJ in indexI..<arrLength {
                    if arr[indexJ] < arr[minIndex] {
                        minIndex = indexJ
                    }
                }
            } else {
                for indexJ in indexI..<arrLength {
                    if arr[indexJ] > arr[minIndex] {
                        minIndex = indexJ
                    }
                }
            }
            if indexI != minIndex {
                swapIndexValues(arr: &arr, index: indexI, minIndex: minIndex, temp: temp)
            }
        }
    }
    
    static func swapIndexValues(arr: inout [Int], index: Int, minIndex: Int, temp: Int) {
        arr[index] = arr[minIndex]
        arr[minIndex] = temp
    }
    
    static func sortOptimized(arr: inout [Int], order: Order) {
        let arrLength = arr.count
        if order == .none || arrLength == 0 {
            return
        }
        let existingOrder = orderOfList(arr: &arr, arrCount: arrLength)
        if order == existingOrder {
            return
        }
        if existingOrder != .none {
            /// If existingOrder is not in .none Order
            /// Then the list is either Ascending or Descending Order
            /// Then just reverse the Array no need to Apply Sort Logic
            reverse(arr: &arr, arrCount: arrLength)
        } else {
            sort(arr: &arr, order: order)
        }
    }
    
    
    /// Finds the order of List
    ///
    /// - Parameter arr: Array of Intigers
    /// - Returns: true -> Ascending and false -> Descending for
    static func orderOfList(arr: inout [Int], arrCount: Int) -> Order {
        var expectedOrder: Order
        ///Compare 1st Index and Last Index
        if arr[0] > arr[arrCount - 1] {
            expectedOrder = .ascending
        } else {
            expectedOrder = .descending
        }
        
        var exactOrder: Order
        for index in 0..<arrCount - 1 {
            if arr[index] > arr[index + 1] {
                exactOrder = .descending
            } else {
                exactOrder = .ascending
            }
            if exactOrder != expectedOrder {
                return Order.none
            }
        }
        return expectedOrder
    }
    
    private static func reverse(arr: inout [Int], arrCount: Int) {
        /// 1st Index
        var iIndex = 0
        /// Last Index
        var jIndex = arrCount - 1
        
        while iIndex < jIndex {
            swap(indexI: jIndex, indexJ: jIndex, arr: &arr)
            iIndex += 1
            jIndex -= 1
        }
    }
    
    static func swap(indexI: Int, indexJ: Int, arr: inout [Int]) {
        let temp = arr[indexI]
        arr[indexI] = arr[indexJ]
        arr[indexJ] = temp
    }
}
