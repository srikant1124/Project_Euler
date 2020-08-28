//
//  MinSubArrayLength.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct MinSubArrayLength {
    // =================>>>>>NOT WORKING !!!! x#x#x#x#!!!!-----!!!!
    func minSubArrayLen(arr: [Int], target: Int) -> Int {
        if arr.isEmpty { return 0 }
        if arr.count == 1 && arr[0] < target { return 0 }
        var sum = arr[0]
        var leftIndex = 0
        var rightIndex = 0
        var minLenght = arr.count
        while leftIndex < arr.count {
            if sum < target && rightIndex < arr.count {
                sum += arr[rightIndex]
                rightIndex += 1
            } else if sum >= target {
                let length = (rightIndex - leftIndex) + 1
                if length < minLenght {
                    minLenght = length
                }
                sum -= arr[leftIndex]
                leftIndex += 1
            } else {
                break
            }
        }
        return minLenght
    }
}
