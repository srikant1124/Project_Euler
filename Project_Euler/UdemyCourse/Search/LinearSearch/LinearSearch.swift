//
//  LinearSearch.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct LinearSearch {
    func linearSearch<T: Comparable>(_ value: T, arr: [T]) -> Int {
        
        for index in 0..<arr.count {
            if arr[index] == value {
                return index
            }
        }
        return -1
    }
}
