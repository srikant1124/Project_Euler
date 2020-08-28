//
//  ClimbingTheLeaderboard.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/21/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ClimbingTheLeaderboard {
    
    func climbingLeaderboard(scores: [Int], alice: [Int]) -> [Int] {
        var newScoreList = [Int]()
        var pre = -1
        for score in scores {
            if score != pre {
                newScoreList.append(score)
                pre = score
            }
        }
        
        var positions = [Int]()
        let lastIndex = newScoreList.count - 1
        for aliceScore in alice {
            let rank = findRank(f: 0, l: lastIndex, arr: &newScoreList, sv: aliceScore)
            positions.append(rank)
        }
        return positions
    }
    
    func findRank(f: Int, l: Int, arr: inout [Int], sv: Int) -> Int {
        var firstIndex = f
        var lastIndex = l
        var m = 0
        while lastIndex >= firstIndex {
            m = (lastIndex + firstIndex)/2
            let element = arr[m]
            if element == sv {
                return m + 1
            } else if element > sv {
                firstIndex = m + 1
            } else {
                lastIndex = m - 1
            }
        }
        return lastIndex+2
    }
}
