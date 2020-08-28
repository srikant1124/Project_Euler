//
//  Histogram.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/23/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Histogram {
   static func findFrequencyOfMark(marks :[Int], fullMark: Int) -> [Int] {
        var frequencies = Array(repeating: 0, count: fullMark)
        for eachMark in marks {
            frequencies[eachMark] += 1
        }
        return frequencies
    }
    
    func printHistogram(frequencies: [Int]) {
        for value in frequencies {
            for _ in 0..<value {
                print("*", separator: "", terminator: " ")
            }
            print("\n")
        }
    }
    
   static func findFrequencyOfPercentage(marks: [Int], percentile: Int, fullMark: Int) -> [Int] {
        let arrSize = fullMark / percentile
        var frequencies = Array(repeating: 0, count: arrSize)
        
        for eachNo in marks {
            let percRange = eachNo / percentile
            print("\(percRange)")
            frequencies[percRange] += 1
        }
        return frequencies
    }
    
    static func mean(freArr: [Int]) -> Double {
        var meanArr = [Int]()
        var sum = 0.0
        var index = 0
        var sumOfFi = 0.0
        for (mark, frequency) in freArr.enumerated() {
            meanArr.append(mark * frequency)
            sum += Double(meanArr[index])
            sumOfFi += Double(frequency)
            index += 1
        }
        let mean = sum / sumOfFi
        return mean
    }
    
    static func median(dataArr: [Int]) -> Int {
        var medianVlaue = 0
        let total = dataArr.count
        if total % 2 != 0 {
            let index = ((total / 2) + 1 )
            medianVlaue = dataArr[index - 1]
        } else {
            let index1 = (total / 2)
            let index2 = ((total / 2) + 1 )
            let medianVlaue1 = dataArr[index1-1]
            let medianVlaue2 = dataArr[index2]
            medianVlaue = (medianVlaue1 + medianVlaue2)/2
        }
        return medianVlaue
    }
}
