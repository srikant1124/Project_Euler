//
//  MaximumNumber.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/24/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct MaximumNumber {
    
    static func maximum(arr: [Int]) -> Int {
        if arr.isEmpty {
            print("List is Empty")
            return -1
        }
        var tempMax = arr[0]
        for index in 1..<arr.count {
            if arr[index] > tempMax {
                tempMax = arr[index]
            }
        }
        return tempMax
    }
    
    static func minimum(arr: [Int]) -> Int {
        if arr.isEmpty {
            print("List is Empty")
            return -1
        }
        var tempMin = arr[0]
        for index in 1..<arr.count {
            if arr[index] < tempMin {
                tempMin = arr[index]
            }
        }
        return tempMin
    }
    
    static func maximumWithPositionFirstOccur(arr: [Int]) -> (max: Int, position: Int) {
        if arr.isEmpty {
            print("List is Empty")
            return (-1, -1)
        }
        var tempMax = arr[0]
        var position = 0
        for index in 1..<arr.count {
            if arr[index] > tempMax {
                tempMax = arr[index]
                position = index
            }
        }
        return (tempMax, position)
    }
    
    static func maximumWithPositionLastOccur(arr: [Int]) -> (max: Int, position: Int) {
        if arr.isEmpty {
            print("List is Empty")
            return (-1, -1)
        }
        var tempMax = arr[0]
        var position = 0
        for index in 1..<arr.count {
            if arr[index] >= tempMax {
                tempMax = arr[index]
                position = index
            }
        }
        return (tempMax, position)
    }
    
    static func maximumWithOccur(arr: [Int]) -> (max: Int, count: Int) {
        if arr.isEmpty {
            print("List is Empty")
            return (-1, -1)
        }
        var tempMax = arr[0]
        var count = 1
        for index in 1..<arr.count {
            if arr[index] > tempMax {
                tempMax = arr[index]
                count = 1
            } else if arr[index] == tempMax {
                count += 1
            }
        }
        return (tempMax, count)
    }
    
    static func secondLargest(arr: [Int]) -> (max: Int, count: Int) {
        if arr.isEmpty {
            print("List is Empty")
            return (-1, -1)
        }
        var tempMax = arr[0]
        var secondMax = arr[1]
        var count = 1
        for index in 1..<arr.count {
            if arr[index] > tempMax {
                secondMax = tempMax
                tempMax = arr[index]
                count = 1
            } else if arr[index] == secondMax {
                count += 1
            }
        }
        return (secondMax, count)
    }
    
    static func maxAndMinWithOccur(arr: [Int]) -> (max: Int, maxCount: Int, min: Int, minCount: Int) {
        if arr.isEmpty {
            print("List is Empty")
            return (-1, -1,-1, -1)
        }
        var tempMax = arr[0]
        var tempMin = arr[0]
        var minCount = 1
        var maxCount = 1
        
        for index in 1..<arr.count {
            if arr[index] > tempMax {
                tempMax = arr[index]
                maxCount = 1
            } else if arr[index] == tempMax {
                maxCount += 1
            }
            
            if arr[index] < tempMin {
                tempMin = arr[index]
                minCount = 1
            } else if arr[index] == tempMin {
                minCount += 1
            }

        }
        return (tempMax, maxCount, tempMin, minCount)
    }
}
