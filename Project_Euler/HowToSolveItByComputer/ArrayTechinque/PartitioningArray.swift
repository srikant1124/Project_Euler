//
//  PartitioningArray.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/25/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct PartitioningArray {
    
    static func customLoop(arr: [Int]) -> Int {
        var counter = 0
        var iIndex = 0
        var jIndex = arr.count - 1
        while jIndex >= iIndex {
            counter += 1
            if iIndex == jIndex {
                let item = arr[iIndex]
                    print(item)
            } else {
                let item = arr[iIndex]
                let item2 = arr[jIndex]
                print(item)
                print(item2)
            }
            iIndex += 1
            jIndex -= 1
        }
        return counter
    }
    
    #warning("Both customLoop and loop will have same computation time or time Complexity")
    func loop() {
        let arr = [Int]()
        for index in arr {
            print(arr[index])
        }
    }
    
    static func partitioningArray(arr: inout [Int], x: Int) -> Int {
        var iValue = 0
        var jValue = arr.count - 1
        var returnIndex = 0
        while jValue > iValue &&  arr[iValue] <= x { iValue += 1 }
        while jValue > iValue && arr[jValue] > x { jValue -= 1 }
        if arr[jValue] > x { jValue -= 1 }
        while iValue < jValue {
            let temp = arr[iValue]
            arr[iValue] = arr[jValue]
            arr[jValue] = temp
            iValue += 1
            jValue -= 1
            while arr[iValue] <= x { iValue += 1 }
            while arr[jValue] > x { jValue -= 1 }
        }
        return jValue
    }
}
