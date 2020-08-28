//
//  Kangaroo.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 2/15/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Kangaroo {
    func kangarooOptimized(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        var result = "NO"
        if (x1 - x2) % (v2 - v1) == 0 {
            result = "YES"
        }
        print(result)
        return result
    }
    
    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        var result = "NO"
        if (x1 > x2 && v2 > v1) || (x2 > x1 && v1 > v2) {
            let value = checkWithloop(x1: x1, v1: v1, x2: x2, v2: v2)
            result = value ? "YES" : "NO"
        }
        print(result)
        return result
    }
    
    
    func checkWithloop(x1: Int, v1: Int, x2: Int, v2: Int) -> Bool {
        var first = x1 + v1
        var second = x2 + v2
        if x1 > x2 {
            while first > second {
                first += v1
                second += v2
            }
        } else {
            while first < second {
                first += v1
                second += v2
            }
        }
        
        return first == second
    }
}
