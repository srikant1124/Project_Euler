//
//  AveragePair.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct AveragePair {
    
    func averagePair(arr: [Int], target: Double) -> Bool {
        if arr.isEmpty { return false }
        var leftIndex = 0
        var rightIndex = arr.count - 1
        
        while leftIndex < rightIndex {
            let average =  Double(arr[leftIndex] + arr[rightIndex])/2
            if target > average {
                leftIndex += 1
            } else if target < average {
                rightIndex -= 1
            } else {
                return true
            }
        }
        return false
    }
}
