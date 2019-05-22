//
//  ArrayRevese.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/17/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ArrayReverse {
   static func reveseTheArray<T>(arr: inout [T]) -> [T] {
        let arrLength = arr.count - 1
        let totalIteration = arr.count / 2
        for index in 0...totalIteration {
            let t = arr[index]
            let opIndex = arrLength - index
            arr[index] = arr[opIndex]
            arr[opIndex] = t
        }
        return arr
    }
    
    static func reveseTheArrayWay2<T>(arr: inout [T]) -> [T] {
        let size = arr.count
        let totalIteration = size / 2
        var index = 0
        while totalIteration > index {
            let lastIndex = size - (1 + index)
            let t = arr[index]
            arr[index] = arr[lastIndex]
            arr[lastIndex] = t
            index += 1
        }
        return arr
    }
    
    static func reveseTheArraySimpler<T>(arr: inout [T]) -> [T] {
        var lastIndex = arr.count - 1
        var index = 0
        while lastIndex > index {
            let t = arr[index]
            arr[index] = arr[lastIndex]
            arr[lastIndex] = t
            index += 1
            lastIndex -= 1
        }
        return arr
    }
}
