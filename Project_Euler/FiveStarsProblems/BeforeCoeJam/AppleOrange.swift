//
//  AppleOrange.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 2/15/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct AppleOrange {
    func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
        var appleDistances = [Int]()
        for apple in apples {
            let distance = a + apple
            appleDistances.append(distance)
        }
        var orangeDistances = [Int]()
        for orange in oranges {
            let distance = b + orange
            orangeDistances.append(distance)
        }
        var appleSum = 0
        for fruit in appleDistances {
            if fruit >= s && t >= fruit {
                appleSum += 1
            }
        }
        print(appleSum)
        var orangeSum = 0
        for fruit in orangeDistances {
            if fruit >= s && t >= fruit {
                orangeSum += 1
            }
        }
        print(orangeSum)
    }
}
