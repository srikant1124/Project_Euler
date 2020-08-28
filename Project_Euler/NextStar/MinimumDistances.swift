//
//  MinimumDistances.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/11/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct MinimumDistances {
    
    func notbad_minimumDistances(a: [Int]) -> Int {
        var map = [Int: String]()
        var index = 0
        var min = -1
        
        for item in a {
            let value = map[item] ?? ""
            map[item] = value.isEmpty ? "\(index)" : "\(value),\(index),"
            index += 1
        }
        for value in map.values {
            let arr = value.components(separatedBy: ",")
            if arr.count > 1 {
                guard let a = Int(arr[0]) else { continue }
                guard let b = Int(arr[01]) else { continue }
                let dif = abs(a - b)
                if min == -1 {
                    min = dif
                }
                if dif < min {
                    min = dif
                }
            }
        }
        return min
    }
    
    func minimumDistances(a: [Int]) -> Int {
        var map = [Int: Int]()
        var index = 0
        var min = -1
        
        for item in a {
            if let preIndex = map[item] {
                let dif = index - preIndex
                if min == -1 {
                    min = dif
                }
                if dif < min {
                    min = dif
                }
            } else {
                map[item] = index
            }
            index += 1
        }
        return min
    }
}
