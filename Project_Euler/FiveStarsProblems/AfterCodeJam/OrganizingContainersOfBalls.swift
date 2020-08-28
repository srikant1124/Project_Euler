//
//  OrganizingContainersOfBalls.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/5/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct OrganizingContainersOfBalls {
    // Favourite
    func organizingContainers(container: [[Int]]) -> String {
        let size = container[0].count
        var cArr = Array(repeating: 0, count: size)
        var bArr = Array(repeating: 0, count: size)
        for row in 0..<size {
            for col in 0..<size {
                cArr[row] += container[row][col]
                bArr[col] += container[row][col]
            }
        }
        cArr = cArr.sorted()
        bArr = bArr.sorted()
        var possible = true
        for index in 0..<size {
            if cArr[index] != bArr[index] {
                possible = false
                break
            }
        }
        
        return possible ? "Possible" : "Impossible"
    }
}
