//
//  ChocolateFeast.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/12/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ChocolateFeast {
    
    func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
        var sum = 0
        if n == 0 || n == 1 {
            return n
        }
        if c > n {
            return 0
        }
        sum = n / c
        var quantity = sum
        while quantity >= m {
            let rem = quantity % m
            let q = quantity / m
            quantity = q + rem
            sum += q
        }
        return sum
    }
}
