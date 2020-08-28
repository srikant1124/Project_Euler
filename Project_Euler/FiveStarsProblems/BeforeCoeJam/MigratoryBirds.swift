//
//  MigratoryBirds.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/17/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct MigratoryBirds {
    
    func migratoryBirds(arr: [Int]) -> Int {
        if arr.isEmpty {
            return 0
        }
        var returnValue = 0
        var collection = [0, 0, 0, 0, 0, 0]
        for index in arr {
            collection[index] += 1
        }
        
        var index = 0
        var max = collection[index]
        for each in collection {
            if max < each {
                max = each
                returnValue = index
            }
            index += 1
        }
        return returnValue
    }
}
