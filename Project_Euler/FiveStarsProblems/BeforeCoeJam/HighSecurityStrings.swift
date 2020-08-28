//
//  HighSecurityStrings.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/25/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct HighSecurityStrings {
    func getStrength(password: String, weight_a: Int) -> Int {
        var letterDict = [Int: Int]()
        var startLetter = 97
        for index in 1...26 {
            letterDict[startLetter] = index
            startLetter += 1
        }
        var strength = 0
        for char in password.utf8 {
            let value = letterDict[Int(char)]!
            var score = weight_a + value - 1
            if score > 26 {
                score = score % 26
            }
            strength += score
        }
        print(strength)
        return strength
    }
}
