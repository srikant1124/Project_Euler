//
//  AppendAndDelete.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/27/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct AppendAndDelete {
    
    func appendAndDelete(s: String, t: String, k: Int) -> String {
        var sCount = s.count
        var tCount = t.count
        if k > sCount + tCount {
            return "Yes"
        } else {
            let smaller = sCount > tCount ? tCount : sCount
            var small = smaller
            let sString = s.utf8CString
            let tString = t.utf8CString
            
            for index in 0..<smaller {
                if tString[index] == sString[index] {
                    sCount -= 1
                    tCount -= 1
                    small -= 1
                } else {
                    break
                }
            }
            let totalLeftChars = sCount + tCount
            if (k - totalLeftChars) >= 0, (k - totalLeftChars) % 2 == 0 {
                return "Yes"
            } else {
                return "No"
            }
        }
    }
}
