//
//  HalloweenSale.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/11/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct HalloweenSale {
    
    func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
        var count = 0
        var dollar = s
        var maxPrice = p
        let minPrice = m
        if maxPrice > dollar {
            return count
        }
        while dollar > 0 {
            if maxPrice > minPrice && dollar >= maxPrice {
                dollar -= maxPrice
                maxPrice -= d
            } else if maxPrice <= minPrice && dollar >= minPrice {
                dollar -= minPrice
            } else {
                break
            }
            count += 1
            print("maxPrice : \(maxPrice), d : \(d), dollar : \(dollar), minPrice : \(minPrice), Count : \(count)")
        }
        return count
    }
}
