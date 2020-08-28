//
//  CountingValleys.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 2/13/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation
struct CountingValleys {
    func countingValleys(n: Int, s: String) -> Int {
        var sum = 0
        var flag = -1
        var map = [String: Int]()
        map["U"] = 0
        map["D"] = 0
        for each in s {
            if flag == -1 {
                if each == "U" {
                    flag = 0
                } else {
                    flag = 1
                }
            }
            map["\(each)"] = map["\(each)"]! + 1
            if map["U"] == map["D"] && map["U"] != 0 {
                if flag == 1 {
                    sum += 1
                }
                flag = -1
                map["U"] = 0
                map["D"] = 0
            }
            
        }
        print(sum)
        return sum
    }
}
