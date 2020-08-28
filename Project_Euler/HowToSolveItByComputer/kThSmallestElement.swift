//
//  kThSmallestElement.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/30/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct kThSmallestElement {
    
    /// Way: 1
    #warning("Way: 1 is not working Now")
    static func kthSmallestElement(kTh k: Int, arr: inout [Int]) -> Int {
        var l = 0
        var u = arr.count - 1
        while l < u {
            var i = l
            var j = u
            let x = arr[k]
            while i <= k && j >= k {
                while arr[i] < x { i += 1 }
                while arr[j] < x { j -= 1 }
                let temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
                i += 1
                j -= -1
            }
            if j < k { l = i }
            if i > k { u = j }
        }
        return arr[k]
    }
    
    /// Way: 2
    /// Use the similar logic like Selection sort.
    /// kth Selection will be the kth element
    static func kthSmallestUsingSelection(arr: inout [Int], kth: Int) -> Int {
        for indexI in 0..<kth {
            let temp = arr[indexI]
            var minIndex = indexI
            for indexJ in indexI+1..<arr.count {
                if arr[indexJ] < arr[minIndex] {
                    minIndex = indexJ
                }
            }
            arr[indexI] = arr[minIndex]
            arr[minIndex] = temp
        }
        return arr[kth - 1]
    }
    
    /// Use the similar logic like Selection sort.
    /// kth Selection will be the kth element
    static func kthLargestUsingSelection(arr: inout [Int], kth: Int) -> Int {
        for indexI in 0..<kth {
            let temp = arr[indexI]
            var minIndex = indexI
            for indexJ in indexI+1..<arr.count {
                if arr[indexJ] > arr[minIndex] {
                    minIndex = indexJ
                }
            }
            arr[indexI] = arr[minIndex]
            arr[minIndex] = temp
        }
        return arr[kth - 1]
    }
}
