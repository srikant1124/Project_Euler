//
//  Recursions.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/26/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Recursions {
    
    // Example of Header Function using recursion
    func findOddNumbers(arr: [Int]) -> [Int] {
        var result: [Int] = []
        func helper(numbers: [Int]) {
            if numbers.isEmpty { return }
            if numbers[0] % 2 != 0 {
                result.append(numbers[0])
            }
            var list = numbers
            list.remove(at: 0)
            helper(numbers: list)
        }
        helper(numbers: arr)
        return result
    }
    
    func power(number: Int, pow: Int) -> Int {
        if pow == 0 {
            return 1
        }
        return number * power(number: number, pow: pow - 1)
    }
    
    func factorial(number: Int) -> Int {
        if number == 1 || number == 0 {
            return 1
        }
        return number * factorial(number: number - 1)
    }
    
    func sumOfArray(arr: [Int]) -> Int {
        var result = 0
        if arr.isEmpty {
            return 0
        }
        result += arr[0]
        var list = arr
        list.remove(at: 0)
        return result + sumOfArray(arr: list)
    }
    
    func productOfArray(arr: [Int]) -> Int {
        var result = 1
        if arr.isEmpty {
            return result
        }
        result *= arr[0]
        var list = arr
        list.remove(at: 0)
        return result * productOfArray(arr: list)
    }
    
    func productOfArray_Helper(arr: [Int]) -> Int {
        var result = 0
        func product(arr: [Int]) -> Int {
            var result = 1
            if arr.isEmpty {
                return result
            }
            result *= arr[0]
            var list = arr
            list.remove(at: 0)
            return result * productOfArray(arr: list)
        }
        if arr.count > 0 {
            result = product(arr: arr)
        }
        return result
    }
    
    func recursiveRange(number: Int) -> Int {
        if number == 0 {
            return 0
        }
        return number + recursiveRange(number: number - 1)
    }
    
    func fibAtPosition(number: Int) -> Int {
        if number <= 2 {
            return 1
        }
        return fibAtPosition(number: number - 1) + fibAtPosition(number: number - 2)
    }
    
    func reverse(str: String) -> String {
        if str.count == 1 { return str }
        var result = ""
        if str.isEmpty { return "" }
        var muStr = str
        let char = muStr.removeLast()
        result.append(char)
        result.append(reverse(str: muStr))
        return result
    }
    
    func isPalindrome(str: String) -> Bool {
        if str.count == 1 { return true }
        let reverseString = reverse(str: str)
        if reverseString == str {
            return true
        } else {
            return false
        }
    }
}
