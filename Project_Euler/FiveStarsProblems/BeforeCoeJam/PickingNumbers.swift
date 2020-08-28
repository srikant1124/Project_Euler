//
//  PickingNumbers.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/21/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct PickingNumbers {
    
    func pickingNumbers(a: [Int]) -> Int {
        var dict = [String: (Int, Int)]()
        var map = [Int: Bool]()
        for original in a {
            if map[original] == nil {
                map[original] = true
                for number in a {
                    let key1 = "\(original),\(number)"
                    let key2 = "\(number),\(original)"
                    if dict[key1] == nil && dict[key2] == nil {
                        if abs(original - number) == 0 || abs(original - number) == 1 {
                            dict[key1] = (original, number)
                        }
                    }
                }
            }
        }
        
        var max = 0
        for value in dict.values {
            var sum = 0
            for item in a {
                if item == value.0 || item == value.1 {
                    sum += 1
                }
            }
            if sum > max {
                max = sum
            }
        }
        print("Max = \(max)")
        return max
    }
}
