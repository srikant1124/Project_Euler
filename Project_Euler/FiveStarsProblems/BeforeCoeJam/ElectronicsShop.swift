//
//  ElectronicsShop.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/18/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation
//https://github.com/RyanFehr/HackerRank/blob/master/Algorithms/Implementation/Electronics%20Shop/Solution.java
struct ElectronicsShop {
    func notbest_getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
        let start = CFAbsoluteTimeGetCurrent()
        var maxPrice = -1
        for keyboardPrice in keyboards {
            if keyboardPrice < b {
                for drivePrice in drives {
                    let wholePrice = drivePrice + keyboardPrice
                    if wholePrice <= b && maxPrice < wholePrice {
                        maxPrice = wholePrice
                    }
                }
            }
        }
        let end = CFAbsoluteTimeGetCurrent() - start
        print("Time taken \(end)")
        return maxPrice
    }
    
    func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
        //        let start = CFAbsoluteTimeGetCurrent()
        var maxPrice = -1
        let keyboardPrices = keyboards.sorted(by: >)
        let drivePrices = drives.sorted(by: <)
        for keyboardPrice in keyboardPrices {
            if keyboardPrice < b {
                for drivePrice in drivePrices {
                    let total = keyboardPrice + drivePrice
                    if total > b {
                        break
                    }
                    if total > maxPrice {
                        maxPrice = total
                    }
                }
            }
        }
        //        let end = CFAbsoluteTimeGetCurrent() - start
        //        print("Time taken \(end)")
        return maxPrice
    }
}
