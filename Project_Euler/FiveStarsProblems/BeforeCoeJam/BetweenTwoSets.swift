//
//  BetweenTwoSets.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/17/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct BetweenTwoSets {
    
    func getTotalX(a: [Int], b: [Int]) -> Int {
        var count = 0
        let max = findMax(arr: a)
        let min = findMin(arr: b)
        
        if max > min || max == min {
            return 0
        }  else {
            var startValue = max
            var increament = 1
            let firstArr = a.reversed()
            var collection: [Int] = []
            while startValue <= min {
                startValue = max * increament
                print("Each New Number = \(startValue)")
                var isValid = true
                for each in firstArr {
                    if startValue % each != 0 {
                        isValid = false
                        break
                    }
                }
                if isValid && startValue <= min {
                    collection.append(startValue)
                    print("Collected Number = \(startValue)")
                }
                increament += 1
            }
            for each in collection {
                var flag = true
                for element in b {
                    if element % each != 0 {
                        flag = false
                        break
                    }
                }
                if flag {
                    count += 1
                }
            }
        }
        return count
    }
    
   private func findMax(arr: [Int]) -> Int {
        var max = arr[0]
        for each in arr {
            if each >= max {
                max = each
            }
        }
        return max
    }
    
   private func findMin(arr: [Int]) -> Int {
        var min = arr[0]
        for each in arr {
            if each <= min {
                min = each
            }
        }
        return min
    }
}
