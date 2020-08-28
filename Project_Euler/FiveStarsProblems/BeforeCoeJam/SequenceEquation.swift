//
//  SequenceEquation.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct SequenceEquation {
    
    func permutationEquation(p: [Int]) -> [Int] {
        var result = [Int]()
        var dict = [Int :Int]()
        var index = 0
        var min = p[0]
        var max = p[0]
        for item in p {
            dict[item] = index + 1
            index += 1
            if max < item {
                max = item
            }
            if min > item {
                min = item
            }
        }
        
        for item in min...max {
            let value = dict[dict[item]!]!
            result.append(value)
        }
        return result
    }
}
