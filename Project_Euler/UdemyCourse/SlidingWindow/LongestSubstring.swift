//
//  LongestSubstring.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct LongestSubstring {

    /*
    1. Listen carefully and Understand the problem. (If not ask ...)
    2. Explore and discuss Inputs:
        1. Discuss Valid Inputs and Complex Inputs
        2. Discuss Empty Inputs / any Corner cases
        3. Discuss Nil Inputs / any Corner cases
        4. Discuss Invlaid Inputs / any corner cases
    3. Start with Brute force and discuss Using: (Nested loops and Recursion) & Analysis Time and Space complexity.
    4. Then Optimez and discuss Using: (Math, Single Loop, Set, Hash map, Dictionary, sliding window)
    5. Walkthrough your analysis + write in a paper -> Done ? --> Analysis Time and Space complexity.
    6. Ask for Coding
    7. Test (Valid, Complex, Empty, nil, Invali and any corner cases)
 */

    func longestSubstring(str: String) -> Int {
        if str.isEmpty { return 0 }
        if str.count == 1 { return 1 }
        var index = 0
        var maxLenght = 0
        var map: [Character: Int] = [:]
        var subString = ""
        
        while index < str.count {
            let charIndex = str.index(str.startIndex, offsetBy: index)
            let letter = str[charIndex]
            if map[letter] == nil {
                subString.append(letter)
                map[letter] = 1
                index += 1
                if subString.count > maxLenght {
                    maxLenght = subString.count
                }
            } else {
                let letter = subString.removeFirst()
                map.removeValue(forKey: letter)
            }
        }
        return maxLenght
    }
}
