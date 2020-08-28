//
//  InsertSort.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/17/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct InsertionSort {
    
    static func sort(arr: inout [Int], order: Order) {
        if order == .ascending {
            sortAscending(arr: &arr)
        } else {
            sortDescending(arr: &arr)
        }
    }
    
    static func sortAscending(arr: inout [Int]) {
        for i in 0..<arr.count - 1 {
            var indexI = i
            let indexJ = indexI + 1
            let temp = arr[indexJ]
            while indexI >= 0 && temp < arr[indexI] {
                arr[indexI + 1] = arr[indexI]
                indexI -= 1
            }
            arr[indexI + 1] = temp
        }
    }
    
    static func sortDescending(arr: inout [Int]) {
        for i in 0..<arr.count - 1 {
            var indexI = i
            let indexJ = indexI + 1
            let temp = arr[indexJ]
            while indexI >= 0 && arr[indexI] < temp {
                arr[indexI + 1] = arr[indexI]
                indexI -= 1
            }
            arr[indexI + 1] = temp
        }
    }
}
