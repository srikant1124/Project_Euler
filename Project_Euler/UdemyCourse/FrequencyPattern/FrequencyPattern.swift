//
//  FrequencyPattern.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/26/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct FrequencyPattern {
    
    // PROBLEM 1:
    /// Count the char frequency in a string
    /// - Parameter string: Input a string
    /// - Returns: dictionary with char -> frequency
    func countChar(string: String?) -> [Character: Int] {
        guard let inputString = string,
            inputString.isEmpty else {
                return [:]
        }
        
        var map: [Character: Int] = [:]
        for eachChar in inputString {
            if map[eachChar] == nil {
                map[eachChar] = 1
            } else {
                map[eachChar]! += 1
            }
        }
        
        return map
    }
    
    //================= END ===================
    
    // PROBLEM 2:
    // INPUTS:
    //1. "srikant" and "tnakirs" | "Ok" & "k" | "okk" & "ok" | "ok " & "ko"
    //2. "" & "" , "" & "cool" , "cool" & ""
    //3. nil, Optional string
    //4. Invalid Inputs: "123"
    
    // ====================>>> FIRST LOGIC <<<======================
    func isAnagram(stringOne: String?, stringTwo: String?) -> Bool {
        guard let str1 = stringOne, let str2 = stringTwo else {
            return false
        }
        
        if str1.isEmpty, str2.isEmpty {
            return true
        }
        
        if str1.count != str2.count {
            return false
        }

        var strOneMap: [Character: Int] = [:]
        var strTwoMap: [Character: Int] = [:]
        
        for char in str1 {
            if strOneMap[char] == nil {
                strOneMap[char] = 1
            } else {
                strOneMap[char] = strOneMap[char]! + 1
            }
        }
        
        for char in str2 {
            if strTwoMap[char] == nil {
                strTwoMap[char] = 1
            } else {
                strTwoMap[char] = strTwoMap[char]! + 1
            }
        }
        
        let result = true
        for key in strOneMap.keys {
            guard let value1 = strOneMap[key] else {
                return false
            }
            guard let value2 = strTwoMap[key] else {
                return false
            }
            if value1 != value2 {
                return false
            }
        }
        
        return result
    }
    
    // ====================>>> Optimized LOGIC <<<======================
    //=====================>>> Space Wise <<======================
    func isAnagram_optimized(stringOne: String?, stringTwo: String?) -> Bool {
        guard let str1 = stringOne,
            let str2 = stringTwo else {
                return false
        }
        
        if str1.count != str2.count {
            return false
        }
        
        var strOneMap: [Character: Int] = [:]
        
        for char in str1 {
            strOneMap[char] == nil ? (strOneMap[char] = 1) : (strOneMap[char] = strOneMap[char]! + 1)
        }
        
        for char in str2 {
            guard let value = strOneMap[char], value != 0 else {
                return false
            }
            strOneMap[char] = strOneMap[char]! - 1
        }
        return true
    }
    
    
    //================= END ===============
    // PROBLEM 3:
    /// countUniqueValues
    /// - Parameter arr: arr
    /// - Returns: counts
    func countUniqueValues(arr: [Int]?) -> Int {
          guard let array = arr,
              !array.isEmpty else {
                  return 0
          }
          
          if array.count == 1 {
              return array.count
          }
          var resultArray: [Int] = []
          var indexI = 0
          resultArray.append(array[indexI])
          for indexJ in 1..<array.count {
              if array[indexI] != array[indexJ] {
                  indexI = indexJ
                  resultArray.append(array[indexI])
              }
          }
          return resultArray.count
      }
    
    //================= END ===============
    // PROBLEM 3:
    
    
    /// sameFrequency_Optimized
    /// - Parameters:
    ///   - firstNumber: firstNumber
    ///   - secondNumber: secondNumber
    /// - Returns: true or false
    func sameFrequency_Optimized(firstNumber: Int, secondNumber: Int) -> Bool {
        if firstNumber == secondNumber { return true }
        
        let str1 = "\(firstNumber)"
        let str2 = "\(secondNumber)"
        
        if str1.count != str2.count {
            return false
        }
        
        let mapOne = getFrequencyMap(num: str1)
        let mapTwo = getFrequencyMap(num: str2)
        
        for key in mapOne.keys {
            guard let value1 = mapOne[key],
                let value2 = mapTwo[key],
                value1 == value2 else {
                    return false
            }
        }
        return true
    }
    
    private func getFrequencyMap(num: String) -> [Character: Int] {
        var dict: [Character: Int] = [:]
        for char in num {
            if dict[char] == nil {
                dict[char] = 1
            } else {
                dict[char]! += 1
            }
        }
        return dict
    }
    
    func sameFrequency(firstNumber: Int, secondNumber: Int) -> Bool {
        if firstNumber == secondNumber { return true }
        
        let (length1, mapOne) = getLengthAndMapOfNumber(num: firstNumber)
        let (length2, mapTwo) = getLengthAndMapOfNumber(num: secondNumber)
        
        if length1 != length2 {
            return false
        }
        
        for key in mapOne.keys {
            guard let value1 = mapOne[key],
                let value2 = mapTwo[key],
                value1 == value2 else {
                    return false
            }
        }
        return true
    }
    
    private func getLengthAndMapOfNumber(num: Int) -> (Int, [Int: Int]) {
        var number = num
        var length = 0
        var dict: [Int: Int] = [:]
        
        while number != 0 {
            let digit = number % 10
            if (dict[digit] == nil) {
                dict[digit] = 1
            } else {
                dict[digit]! += 1
            }
            number = number / 10
            length += 1
        }
        return (length, dict)
    }

    // CodeSignal
    func firstDuplicate(a: [Int]) -> Int {
        var map = [Int: Bool]()
        for index in 0..<a.count {
            let item = a[index]
            if map[item] == nil {
                map[item] = true
            } else {
                return index + 1
            }
        }
        return -1
    }
    
    func firstNotRepeatingCharacter(s: String) -> Character {
        var freqncMap = [Character: Int]()
        var posMap = [Character: Int]()
        
        var index = 0
        for char in s {
            if freqncMap[char] == nil {
                freqncMap[char] = 1
                posMap[char] = index
            } else {
                freqncMap[char]! += 1
            }
            index += 1
        }
        var minPosition = s.count
        var char: Character = "_"
        for key in freqncMap.keys {
            if let value = freqncMap[key],
                value == 1 {
                let pos = posMap[key]!
                if pos < minPosition {
                    minPosition = pos
                    char = key
                }
            }
        }
        return char
    }
}
