//
//  EqualizeTheArray.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct EqualizeTheArray {
    
    func equalizeArray(arr: [Int]) -> Int {
        var map = [Int: Int]()
        for item in arr {
            if map[item] == nil {
                map[item] = 1
            } else {
                map[item]! += 1
            }
        }
        var maxCount = 0
        for value in map.values {
            if value > maxCount {
                maxCount = value
            }
        }
        let leftElements = arr.count - maxCount
        return leftElements
    }
}
