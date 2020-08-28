//
//  CircularArrayRotation.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct CircularArrayRotation {
    
    func notGoodSolution_circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
        var arr = a
        for _ in 1...k {
            let length = arr.count - 1
            let temp = arr[length]
            for index in 0...length {
                let validIndex = length - index
                if validIndex != 0 {
                    arr[validIndex] = arr[(length - 1) - index]
                } else {
                    arr[validIndex] = temp
                }
            }
        }
        
        var results = [Int]()
        for item in queries {
            let value = arr[item]
            print("Q = \(item) : Result = \(value))")
            results.append(value)
        }
        return results
    }
    
    func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
        var keyValue = 0
        if k > a.count {
            keyValue = k % a.count
            keyValue = a.count - keyValue
        } else {
            keyValue = a.count - k
        }
        var results = [Int]()
        let arrLength = a.count - 1
        for item in queries {
            var index = item + keyValue
            if index > arrLength {
                index = index % a.count
            }
            let value = a[index]
            results.append(value)
        }
        return results
    }
}
