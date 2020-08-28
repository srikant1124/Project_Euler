//
//  SumZero.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/22/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct SumZero {
    
    func sumZero(arr: [Int]?) -> (Int, Int)? {
        guard let array = arr, !array.isEmpty else {
            return nil
        }
        
        var leftIndex = 0
        var rightIndex = array.count - 1
        
        while leftIndex < rightIndex {
            let sum = array[leftIndex] + array[rightIndex]
            if sum == 0 {
                return (array[leftIndex], array[rightIndex])
            } else if sum > 0 {
                rightIndex -= 1
            } else {
                leftIndex += 1
            }
        }
        return nil
    }
}
