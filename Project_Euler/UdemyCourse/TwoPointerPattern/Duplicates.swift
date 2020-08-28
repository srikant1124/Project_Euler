//
//  Duplicates.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Duplicates<T> {
    
    // 1. Understand Problem and state it again
    // 2. Explore different Inputs
            //1. Valid Inputs and Complex Input
            //2. Empty Enput
            //3. Nil Input
            //4. Invalid Input
    // 3. Brute Force
    // 4. Optimized
    // 5. walk through
    // 6. Code
    // 7. Test
    
    func areThereDuplicates_Optimized<T: Hashable>(arr: [T]) -> Bool {
        if Set(arr).count != arr.count { return true }
        return false
    }
    
    func areThereDuplicates_TypeOne<T: Comparable>(arr: [T]) -> Bool {
        if arr.isEmpty { return false }
        let values = arr.sorted { (a, b) -> Bool in
            return a > b
        }
        for index in 0..<values.count - 1 {
            let num1 = values[index]
            let num2 = values[index + 1]
            if num1 == num2 {
                return true
            }
        }
        return false
    }
    
    func areThereDuplicates_TypeTwo<T: Hashable>(arr: [T]) -> Bool {
        var dict = [T: Int]()
        for item in arr {
            if dict[item] == nil {
                dict[item] = 1
            } else {
                return true
            }
        }
        return false
    }
}
