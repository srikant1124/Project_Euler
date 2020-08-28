//
//  NumberLetterCounts .swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/22/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

///https://www.mathblog.dk/project-euler-17-letters-in-the-numbers-1-1000/

class NumberLettersCounts {
    
    let numbersInWords = "one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen"
    var firstTable = [Int]()
    let tensnWords = "twenty thirty forty fifty sixty seventy eighty ninety"
    var secondTable = [String: Int]()
    var secondTableWithWord = [String: String]()
    let nthTable = [2: 10, 3: 100, 4: 1000]
    var wordTable = [Int: String]()
    
    init() {
        prepareTable()
    }
    
    func prepareTable() {
        let listOfWords = numbersInWords.split(separator: " ")
        firstTable = Array(repeating: 0, count: listOfWords.count + 1)
        var index = 1
        for each in listOfWords {
            firstTable[index] = each.count
            wordTable[index] = String(each)
            index += 1
        }
        
        let listOfTens = tensnWords.split(separator: " ")
        for each in listOfTens {
            let key = String(each.prefix(2))
            secondTable[key] = each.count
            print(each.count)
            secondTableWithWord[key] = String(each)
        }
    }
    
    func addAllLettersOfNumberTill(from: Int, toNumber: Int) -> Int {
        var sum = 0
        for eachItem in from...toNumber {
            let result = getLenth(number: eachItem)
            print("\(eachItem), \(result.1) \(result.0)\n")
            sum += result.0
        }
        return sum
    }
    
    func getLenth(number: Int) -> (Int, String) {
        let foundValue = searchInFirstTable(number: number)
        if foundValue != 0 {
            return (foundValue, wordTable[number]!)
        } else {
            let digitsCount = getDigitCounts(number: number)
            switch digitsCount {
            case 2:
                var numberInString = ""
                let firstDigit = getFirstDigits(number: number)
                let word = wordTable[firstDigit]
                let lastTwoChars = String(word!.prefix(2))
                numberInString += " " + secondTableWithWord[lastTwoChars]!
                let exactWordLength = secondTable[lastTwoChars]
                var totalLength = exactWordLength!
                let (length, stringValue) = getLenth(number: number % 10)
                totalLength += length
                numberInString += " " + stringValue
                return (totalLength, numberInString)
            case 3:
                var stringNumber = "hundred"
                var totalLength = stringNumber.count
                let firstDigit = getFirstDigits(number: number)
                let (length, stringValue) = getLenth(number: firstDigit)
                totalLength += length
                let restOfDigits = redcueNumber(number: number)
                if restOfDigits > 0 {
                    stringNumber = stringValue + " " + stringNumber + " and"
                    let (length1, stringValue1) = getLenth(number: restOfDigits)
                    stringNumber += " " + stringValue1
                    totalLength += length1
                    totalLength += "and".count
                } else {
                    stringNumber = stringValue + " " + stringNumber
                }
                return (totalLength, stringNumber)
            case 4:
                return ("onethousand".count, "onethousand")
            default:
                break
            }
        }
        return (0, "")
    }
    
    func getDigitCounts(number: Int) -> Int {
        var num = number
        var count = 0
        while num > 0 {
            num = num / 10
            count += 1
        }
        return count
    }
    
    func getFirstDigits(number: Int) -> Int {
        var num = number
        var firstDigit = number
        while num > 0 {
            firstDigit = num
            num = num / 10
        }
        return firstDigit
    }
    
    func redcueNumber(number: Int) -> Int {
        var stringNumber = "\(number)"
        stringNumber.remove(at: stringNumber.startIndex)
        if let intValue = Int(stringNumber) {
            return intValue
        }
        return 0
    }
    
    func searchInFirstTable(number: Int) -> Int {
        if number <= 19 {
            return firstTable[number]
        }
        return 0
    }
    
}
