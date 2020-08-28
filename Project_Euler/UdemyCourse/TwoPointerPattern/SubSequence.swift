//
//  SubSequence.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct SubSequence {
    
    func isSubSequence(str1: String, str2: String) -> Bool {
        if str1 == str2 { return true }
        if str1.count > str2.count { return false }
        if str1.isEmpty { return true }
        
        var index = 0
        for char in str2 {
            let charAtIndex = str1.index(str1.startIndex, offsetBy: index)
            if char == str1[charAtIndex] {
                index += 1
            }
            if index == str1.count - 1 {
                return true
            }
        }
        return false
    }
}
