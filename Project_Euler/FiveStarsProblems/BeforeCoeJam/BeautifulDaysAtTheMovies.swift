//
//  BeautifulDaysAtTheMovies.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/22/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct BeautifulDaysAtTheMovies {
    //May be we dont need to find the reverse to know the result i.e evenly divisible
    func beautifulDays(i: Int, j: Int, k: Int) -> Int {
        var counter = 0
        for number in i...j {
            var q = number
            var rev = 0
            while q != 0 {
                let digit = q % 10
                q = q / 10
                rev = rev * 10 + digit
            }
            if abs(number - rev) % k == 0 {
                counter += 1
            }
        }
        return counter
    }
}
