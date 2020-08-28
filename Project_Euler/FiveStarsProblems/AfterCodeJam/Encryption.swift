//
//  Encryption.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/5/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Encryption {
    
    func encryption(s: String) -> String {
        let cleanString = s.trimmingCharacters(in: .whitespacesAndNewlines)
        let length = cleanString.count
        var minRow = floor(sqrt(Double(length)))
        let maxCol = ceil(sqrt(Double(length)))
        if Int(minRow * maxCol) < length {
            minRow = maxCol
        }
        var arr = Array(repeating: "", count: Int(maxCol))
        for index in 0..<Int(maxCol) {
            var jindex = 0
            while jindex < length {
                let charIndex = cleanString.index(cleanString.startIndex, offsetBy: jindex + index, limitedBy: cleanString.endIndex)
                let range = cleanString.startIndex..<cleanString.endIndex
                if let indexC = charIndex, range.contains(indexC) {
                    let prefix = cleanString[charIndex!]
                    arr[index] += String(prefix)
                }
                jindex += Int(maxCol)
            }
        }
        var output = ""
        var index = 1
        for item in arr {
            output += item
            if index != arr.count {
                output += " "
            }
            index += 1
        }
        return output
    }
}
