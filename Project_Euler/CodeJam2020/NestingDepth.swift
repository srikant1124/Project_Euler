//
//  NestingDepth.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/4/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct NestingDepth {
    
    func solve(string: String) -> String {
        var outPutString = ""
        var pre = 0
        var closingBrkt = 0
        for char in string {
            guard let intValue = Int("\(char)") else { continue }
            if intValue == 0 {
                appendClosebrkt(count: closingBrkt, str: &outPutString)
                outPutString.append(char)
                closingBrkt = 0
            } else if intValue > pre {
                let val = intValue - closingBrkt
                appendOpenbrkt(count: val, str: &outPutString)
                outPutString.append(char)
                closingBrkt += val
            } else if intValue == pre {
                outPutString.append(char)
            } else if intValue < pre {
                let val = pre - intValue
                appendClosebrkt(count: val, str: &outPutString)
                closingBrkt -= val
                outPutString.append(char)
            } else {
                appendOpenbrkt(count: intValue, str: &outPutString)
                outPutString.append(char)
                closingBrkt += intValue
            }
            pre = intValue
            print(outPutString)
        }
        appendClosebrkt(count: closingBrkt, str: &outPutString)
        print(outPutString)
        return outPutString
    }
    
    func appendClosebrkt(count: Int, str: inout String) {
        for _ in 0..<count {
            str.append(")")
        }
    }
    
    func appendOpenbrkt(count: Int, str: inout String) {
        for _ in 0..<count {
            str.append("(")
        }
    }
}

/*import Foundation
func solve(testCases: Int, string: String) {
    var outPutString = ""
    var pre = 0
    var closingBrkt = 0
    for char in string {
        guard let intValue = Int("\(char)") else { continue }
        if intValue == 0 {
            appendClosebrkt(count: closingBrkt, str: &outPutString)
            outPutString.append(char)
            closingBrkt = 0
        } else if intValue > pre {
            let val = intValue - closingBrkt
            appendOpenbrkt(count: val, str: &outPutString)
            outPutString.append(char)
            closingBrkt += val
        } else if intValue == pre {
            outPutString.append(char)
        } else if intValue < pre {
            let val = pre - intValue
            appendClosebrkt(count: val, str: &outPutString)
            closingBrkt -= val
            outPutString.append(char)
        } else {
            appendOpenbrkt(count: intValue, str: &outPutString)
            outPutString.append(char)
            closingBrkt += intValue
        }
        pre = intValue
    }
    appendClosebrkt(count: closingBrkt, str: &outPutString)
    print("Case #\(testCases): \(outPutString)", separator: " ", terminator: "\n")
}

func appendClosebrkt(count: Int, str: inout String) {
    for _ in 0..<count {
        str.append(")")
    }
}

func appendOpenbrkt(count: Int, str: inout String) {
    for _ in 0..<count {
        str.append("(")
    }
}

guard let T = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for TItr in 1...T {
    guard let w = readLine() else { fatalError("Bad input") }
    solve(testCases: TItr, string: w)
}
*/
