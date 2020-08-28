//
//  RepeatedString.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct RepeatedString {
    
    func repeatedString(s: String, n: Int) -> Int {
        
        let stringLength = s.count
        var totalCount = 0
        
        if stringLength > n {
            totalCount = getCount(s: s, n: n)
            return totalCount
        } else {
            var count = 0
            for item in s {
                if item == "a" {
                    count += 1
                }
            }
            let times = n / stringLength
            let rem = n % stringLength
            totalCount = times * count
            totalCount += getCount(s: s, n: rem)
        }
        return totalCount
    }
    
    func getCount(s: String, n: Int) -> Int {
        var mString = s
        var count = 0
        var length = n
        while length != 0 {
            let char = mString.removeFirst()
            if char == "a" {
                count += 1
            }
            length -= 1
        }
        return count
    }
}
