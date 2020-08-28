//
//  TheHurdleRace.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/21/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct TheHurdleRace {
    
    func hurdleRace(k: Int, height: [Int]) -> Int {
        var max = 0
        for towerHeight in height {
            if towerHeight > max {
                max = towerHeight
            }
        }
        if k >= max {
            return 0
        }
        return max - k
    }
}
