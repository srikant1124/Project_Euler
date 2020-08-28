//
//  JumpingOnTheClouds.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct JumpingOnTheClouds {
    
    func jumpingOnClouds(c: [Int]) -> Int {
        
        var length = 0
        var jumps = 0
        while length != c.count - 1 {
            if c.count > length + 1, c[length + 1] == 0 {
                if c.count > length + 2, c[length + 2] == 0 {
                    length += 2
                } else {
                    length += 1
                }
            } else {
                length += 2
            }
            jumps += 1
        }
        return jumps
    }
}
