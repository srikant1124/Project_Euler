//
//  FactorialComputation.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/1/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

enum FactorialError: Error {
    case InvalidNumber(description: String)
}

struct FactorialComputation {
    let description = "Factorial of this number cant be calculated"
    var timeComplexity = TimeComplexity()
    func factorialOf(number: Int) throws -> Double {
        var factorial = 1.0
        if number < 0 {
            throw FactorialError.InvalidNumber(description: description)
        }
        if number == 0 {
            return factorial
        }
        for vlaue in 1...number {
            factorial *= Double(vlaue)
        }
        return factorial
    }
    
    func factorialByRecursion(number: Int) throws -> Double {
        var factorial = 1.0
        if number < 0 {
            throw FactorialError.InvalidNumber(description: description)
        }
        factorial = factorialOf(number)
        return factorial
    }
    
    private func factorialOf(_ number: Int) -> Double {
        if number == 0 || number == 1 {
            return 1
        }
        return factorialOf(Int(Double(number) - 1)) * Double(number)
    }
}
