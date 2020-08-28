//
//  JarCounts.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 7/7/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct JarCounts {
    #warning("Not Optimized Way")
    func countMinJars(valueC: Int, valueK: Int, arr: [Int]) -> Int {
        var sortArr = arr.sorted()
        print(sortArr)
        var count = 0
        var indexJ = 0
        var firstArr = [Int]()
        for index in 0..<sortArr.count {
            if sortArr[index] < valueK && count < valueC {
                count += 1
            } else {
                break
            }
            indexJ = index
        }
        indexJ = indexJ + 1
        
        var secondArr = [Int]()
        var secondArrIndex = 0
        var secCount = 0
        
        for index in indexJ..<sortArr.count {
            if secondArr.isEmpty {
                secondArr.append(sortArr[indexJ])
            } else if abs(secondArr[secondArrIndex] - sortArr[index]) < valueK && secCount < valueC {
                //DO nothing
                secCount += 1
            } else {
                secondArr.append(sortArr[index])
                secCount = 0
                secondArrIndex += 1
            }
        }
        
        print("Total jars = \(secondArr.count + 1)")
        return secondArr.count + 1
    }
}
