//
//  Helper.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/2/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Helper {
    
    static func getArrayOfIntegers(howMany: Int, maxRange: Int = 20, repeation: Bool) -> [Int] {
        var numbers = [Int]()
        var range = 0
        if repeation {
            range = maxRange
        } else {
            if howMany <= maxRange {
                range = howMany * 2
            }
        }

        while numbers.count < howMany {
            let number = Int(arc4random_uniform(UInt32(range)))
            if repeation {
                numbers.append(number)
            } else if !numbers.contains(number) {
                numbers.append(number)
            }
        }
        return numbers
    }
}

