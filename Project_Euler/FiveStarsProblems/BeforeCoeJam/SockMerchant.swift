//
//  SockMerchant.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 2/13/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct SockMerchant {
    func sockMerchant(n: Int, ar: [Int]) -> Int {
        var map = [Int: Int]()
        for number in ar {
            if let exist = map[number] {
                map[number] =  exist + 1
            } else {
                map[number] = 1
            }
        }
        var sum = 0
        for value in map.values {
            if value >= 2 {
                sum += Int(value / 2)
            }
        }
        return sum
    }
}
