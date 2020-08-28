//
//  BirthdayChocolate.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/17/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct BirthdayChocolate {
    
    func birthday(s: [Int], d: Int, m: Int) -> Int {
        var count = 0
        for index in 0...(s.count - m) {
            var sum = 0
            for localIndex in index...(index + m - 1) {
                sum += s[localIndex]
            }
            if sum == d {
                count += 1
            }
        }
        return count
    }
}
