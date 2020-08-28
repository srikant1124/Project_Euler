//
//  RemoveDuplicates.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/25/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct RemoveDuplicates {
   static func removeDuplicatesFrom(orderedArr: [Int]) -> [Int] {
        if orderedArr.isEmpty {
            print("Array is Empty")
            return []
        }
        var resultArr = [Int]()
        var pre = orderedArr[0]
        resultArr.append(pre)
        for index in 1..<orderedArr.count {
            let temp = orderedArr[index]
            if pre == temp {
                continue
            } else {
                pre = temp
                resultArr.append(temp)
            }
        }
        return resultArr
    }
    
    static func removeAllElementOccurs(mreThan kth: Int, orderedArr: [Int]) -> [Int] {
        if orderedArr.isEmpty {
            print("Array is Empty")
            return []
        }
        if orderedArr.count == 1 {
            return orderedArr
        }
        var resultArr = [Int]()
        var pre = orderedArr[0]
        var counter = 1
        for index in 1..<orderedArr.count {
            let temp = orderedArr[index]
            let isLastElement = orderedArr.count - 1 == index
            if pre == temp {
                counter += 1
                if !isLastElement {
                    continue
                } else if counter <= kth {
                    resultArr.append(temp)
                }
            } else if counter <= kth {
                resultArr.append(pre)
                if isLastElement {
                    resultArr.append(temp)
                }
            } else {
                if isLastElement {
                    resultArr.append(temp)
                }
            }
            pre = temp
            counter = 1
        }
        return resultArr
    }
}
