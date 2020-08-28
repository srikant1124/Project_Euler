//
//  SherlockAndSquares.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/28/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct SherlockAndSquares {
    
    func squares(a: Int, b: Int) -> Int {
        var count = 0
        let first = Int(sqrt(Double(a)))
        let last = Int(sqrt(Double(b)))
        for eachNo in (first...last) {
            let square = eachNo * eachNo
            if a <= square && square <= b {
                count += 1
            }
        }
        return count
    }
    
    func notbest_squares(a: Int, b: Int) -> Int {
        var count = 0
        let first = Int(sqrt(Double(a)))
        for number in a...b {
            let last = Int(sqrt(Double(number)))
            for eachNo in (first...last) {
                if number == eachNo * eachNo {
                    count += 1
                    break
                }
            }
        }
        return count
    }
    
    func notgood_squares(a: Int, b: Int) -> Int {
        var count = 0
        var map = [Int: Int]()
        let last = Int(sqrt(Double(b)))
        let first = Int(sqrt(Double(a)))
        for number in first...last {
            map[number * number] = number
        }
        
        for number in a...b {
            if map[number] != nil {
                count += 1
            }
        }
        return count
    }
}
