//
//  JumpingOnTheCloudsRevisited.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/27/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct JumpingOnTheCloudsRevisited {
    
    func jumpingOnClouds(c: [Int], k: Int) -> Int {
        
        var startIndex = 0
        var sum = 0
        repeat {
            sum += 1
            startIndex = (startIndex + k) % c.count
            if c[startIndex] != 0 {
                sum += 2
            }
        } while startIndex != 0
        return 100 - sum
    }
}
