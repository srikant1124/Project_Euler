//
//  Fizzbuzz.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 7/19/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Fizzbuzz {
    func printFizzbuzz() {
        for number in 1...100 {
            if number % 3 == 0 && number % 5 == 0 {
                print("FizzBuzz")
            } else if number % 3 == 0 {
                print("Fizz")
            } else if number % 5 == 0 {
                print("Buzz")
            } else {
                print(number)
            }
        }
    }
}
