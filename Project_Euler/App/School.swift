//
//  School.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/20/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

class School {
    var stringValue = ""
    var dict = [Int: Double]()
    
    func readAFile() {
        if let filepath = Bundle.main.path(forResource: "Data", ofType: "csv") {
            do {
                let contents = try String(contentsOfFile: filepath)
                stringValue = contents
            } catch let error {
                // contents could not be loaded
                print(error)
            }
        } else {
            // example.txt not found!
        }
    }
    
    func converToDict() {
        let rows = stringValue.components(separatedBy: "\n")
        for row in rows {
            if !row.isEmpty {
                let columns = row.components(separatedBy: ",")
                var amount = columns[1]
                amount = amount.replacingOccurrences(of: "\r", with: "", options: NSString.CompareOptions.literal, range: nil)
                let penney = Double(amount)
                let key = Int(columns[0])
                if dict[key!] == nil {
                    if let doubleValue = penney {
                        dict[key!] = doubleValue
                    }
                } else {
                    if let doubleValue = penney {
                        dict[key!]! += doubleValue
                    }
                }
            }
        }
        var sum = 0.0
        let sortedArr = dict.keys.sorted()
        for eachItem in sortedArr {
            print(eachItem)
        }
        print(sortedArr)
        for key in sortedArr {
            let value = dict[key]
            print(value!)
            sum += value!
        }
        let totalAmount = String(format: "%.2f", sum)
        print(totalAmount)
    }
}

