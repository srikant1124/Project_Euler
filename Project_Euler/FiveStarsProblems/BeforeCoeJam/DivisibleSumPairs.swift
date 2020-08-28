//
//  DivisibleSumPairs.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/17/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct DivisibleSumPairs {
    
    func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
        var pairs = 0
        for index in 0..<n {
            for indexJ in (index+1)..<n {
                if (ar[index] + ar[indexJ]) % k == 0 {
                    pairs += 1
                }
            }
        }
        return pairs
    }
}
