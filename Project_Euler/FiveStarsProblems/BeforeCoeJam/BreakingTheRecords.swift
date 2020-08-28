//
//  BreakingTheRecords.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/17/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct BreakingTheRecords {
    
    func breakingRecords(scores: [Int]) -> [Int] {
        if scores.isEmpty || scores.count == 1 {
            return [0, 0]
        }
        var max = scores[0]
        var min = scores[0]
        var minC = 0
        var maxC = 0
        
        for eachNumber in scores {
            if eachNumber > max {
                max = eachNumber
                maxC += 1
            } else if eachNumber < min {
                min = eachNumber
                minC += 1
            }
        }
        return [maxC, minC]
    }
}
