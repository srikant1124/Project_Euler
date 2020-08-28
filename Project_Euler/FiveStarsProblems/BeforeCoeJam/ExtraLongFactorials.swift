//
//  ExtraLongFactorials.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/27/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ExtraLongFactorials {
    
    // Nice Explanation
    //https://www.geeksforgeeks.org/factorial-large-number/
    func extraLongFactorials(n: Int) -> Void {
        var factorial = [Int]()
        factorial.append(1)
        for value in 1...n {
             multiply(result: &factorial, number: value)
        }
        
        for index in (0..<factorial.count).reversed() {
            print("\(factorial[index])", separator: "", terminator: "")
        }
    }
    
    func multiply(result: inout [Int], number: Int) {
        
        var carry = 0
        var product = 0
        for index in 0..<result.count {
            product = result[index] * number + carry
            result[index] = product % 10
            carry = product / 10
        }
        
        while carry != 0 {
            let rem = carry % 10
            carry = carry / 10
            result.append(rem)
        }
    }
}
