//
//  MaxSubArraySum.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/23/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct MaxSubArraySum {
    
    // 1. Listen problem carefuly and understand it
    // 2. Explore different types of Inputs.
            // 1. Valide Input & Complex Valid Input
            // 2. Empty Inputs
            // 3. Nil inputs
            // 4. Invalid input
    // 3. Brutforce approach
    // 4. Optimized Approach
    // 5. Walk through
    // 6. Code
    // 7. Test
    
    func maxSubArraySum(arr: [Int], num: Int) -> Int? {
        if num > arr.count {
            return nil
        }
        var maxSum = 0
        for index in 0..<num {
            maxSum += arr[index]
        }
        var indexI = 1
        var indexJ = num
        var tempSum = maxSum
        while arr.count > indexJ {
            tempSum = tempSum - arr[indexI - 1] + arr[indexJ]
            if tempSum > maxSum {
                maxSum = tempSum
            }
            indexI += 1
            indexJ += 1
        }
        return maxSum
    }
}
