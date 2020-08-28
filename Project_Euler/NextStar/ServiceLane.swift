//
//  ServiceLane.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/12/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ServiceLane {
    
    func serviceLane(n: Int, cases: [[Int]], width: [Int]) -> [Int] {
        var result: [Int] = []
        for arr in cases {
            var min = 4
            for index in arr[0]...arr[1] {
                if width[index] < min {
                    min = width[index]
                }
            }
            result.append(min)
        }
        return result
    }
}
