//
//  FindDigits.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/27/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct FindDigits {
    
    func findDigits(n: Int) -> Int {
        var number = n
        var count = 0
        
        while number != 0 {
            let remainder = number % 10
            if remainder != 0, n % remainder == 0 {
                count += 1
            }
            number = number / 10
        }
        return count
    }
}
