//
//  NaiveSearchString.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct NaiveSearchString {
    
    //1. Listen carefully and Understand the problem. (If not ask ...)
    //2. Explore and discuss the Inputs:
        //1. Discuss Input Types(Int, String, Double … etc or GENERIC)
        //2. Start Discussion with Valid Inputs and move towards Complex Inputs
        //3. Discuss Empty Inputs / Single Input / any Corner cases
        //4. Discuss Nil Inputs / any Corner cases
        //5. Discuss Best case Input
        //6. Discuss Worst case Input.
        //7. Discuss Invlaid Inputs / any corner cases
    //3. Start with brute force and discuss Using: (Nested loops and Recursion) & Analysis Time and Space complexity.
    //4. Then Optimez and discuss Using: (Math, Single Loop, Set, Hash map, Dictionary, sliding window)
    //5. Walkthrough your analysis + write in a paper -> Done ? --> Analysis Time and Space complexity.
    //6. Ask for Coding
    //7. Test (Valid, Complex, Empty, nil, Invali and any corner cases)
    
    func searchString(_ subString: String, mainSting: String) -> Int {
        if subString == mainSting { return 1 }
        if subString.isEmpty { return 0 }
        if subString.count > mainSting.count { return 0 }
        var indexInSub = 0
        var matchingCount = 0
        for char in mainSting {
            let indexIn = subString.index(subString.startIndex, offsetBy: indexInSub)
            if char == subString[indexIn] {
                if indexInSub == subString.count - 1 {
                    indexInSub = 0
                    matchingCount += 1
                }
                indexInSub += 1
            } else {
                indexInSub = 0
            }
        }
        return matchingCount
    }
}
