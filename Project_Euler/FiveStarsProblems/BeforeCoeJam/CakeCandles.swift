//
//  CakeCandles.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 2/13/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation
struct CakeCandles {
    func birthdayCakeCandles(ar: [Int]) -> Int {
        let max = findMax(arr: ar)
        var count = 0
        for each in ar {
            if max == each {
                count += 1
            }
        }
        print(count)
        return count
    }
    
    func findMax(arr: [Int]) -> Int {
        var max = arr[0]
        for each in arr {
            if each >= max {
                max = each
            }
        }
        return max
    }
}
