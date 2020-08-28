//
//  TheTimeInWords.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/11/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct TheTimeInWords {
    //https://www.helpingwithmath.com/printables/tables_charts/cha0301_numbers_words01.htm
    func timeInWords(h: Int, m: Int) -> String {
        var noLetterMap = [0: "o' clock",
                           1: "one",
                           2: "two",
                           3: "three",
                           4: "four",
                           5: "five",
                           6: "six",
                           7: "seven",
                           8: "eight",
                           9: "nine",
                           10: "ten",
                           11: "eleven",
                           12: "twelve",
                           13: "thirteen",
                           14: "fourteen",
                           15: "quarter",
                           16: "sixteen",
                           17: "seventeen",
                           18: "eighteen",
                           19: "nineteen",
                           20: "twenty",
                           30: "half"]
        
        for number in 21...29 {
            let lastDigit = number % 10
            let word = "twenty \(noLetterMap[lastDigit]!)"
            noLetterMap[number] = word
        }
        var finalWord = ""
        if m == 0 {
            // Use o' clock
            finalWord = noLetterMap[h]!
            finalWord = finalWord + " " + noLetterMap[0]!
        } else if 1 <= m && m <= 30 {
            // use past
            finalWord = timeToWord(m: m, h: h, map: noLetterMap, pastTo: "past")
        } else if 30 < m {
            // use to
            let hour = h == 12 ? 1 : h + 1
            let leftMinutes = 60 - m
            finalWord = timeToWord(m: leftMinutes, h: hour, map: noLetterMap, pastTo: "to")
        }
        return finalWord
    }
    
    func timeToWord(m: Int, h: Int, map: [Int: String], pastTo: String) -> String {
        let word = map[m]!
        let minute = minuteText(m: m)
        let finalWord = word + " " +  minute + pastTo + " " + map[h]!
        return finalWord
    }
    
    func minuteText(m: Int) -> String {
        let minuteText = "minute"
        var minute = m == 1 ? minuteText : minuteText + "s"
        minute = (m == 15 || m == 30) ? "" : minute
        minute = minute == "" ? "" : minute + " "
        return minute
    }
}
