//
//  BinarySearch.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/19/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct BinarySearch {
 
}

extension Array {
    func contains(number: Int) -> Int {
        var upperLimit = self.count - 1
        var lowerLimit = 0
        while upperLimit >= lowerLimit {
            let middleIndex = (lowerLimit + upperLimit) / 2
            let valueAtIndex = self[middleIndex] as! Int
            if valueAtIndex == number {
                return middleIndex
            }
            if valueAtIndex > number {
                upperLimit = middleIndex - 1
            } else if valueAtIndex < number {
                lowerLimit = middleIndex + 1
            }
        }
        return -1
    }
}
