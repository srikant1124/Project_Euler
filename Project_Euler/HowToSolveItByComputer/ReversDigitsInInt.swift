//
//  ReversDigitsInInt.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/3/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

class ReversDigitsInInt {
    func reversDigitsInInteger(number: Int) -> Int {
        var ans = 0
        let tenth = 10
        var mutableNumber = 0
        var isNegative = false
        if number < 0 {
            isNegative = true
            mutableNumber = -1 * number
        } else {
            mutableNumber = number
        }
        while mutableNumber > 0 {
            let rightMostDigit = mutableNumber % tenth
            mutableNumber = mutableNumber / tenth
            ans = (ans * tenth) + rightMostDigit
        }
        if isNegative {
            ans = -1 * ans
        }
        return ans
    }
}
