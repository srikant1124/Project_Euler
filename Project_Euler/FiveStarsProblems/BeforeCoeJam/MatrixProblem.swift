//
//  MatrixProblem.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/18/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct MatrixProblem {
    
    func formingMagicSquare(s: [[Int]]) -> Int {
        let allduplicates = duplicates(matrix: s)
        if allduplicates.isEmpty {
            
        } else {
            print(allduplicates)
        }
        return 0
    }
    
    func duplicates(matrix:[[Int]]) -> [(Int, Int)] {
        var store = [String: String]()
        var result = [(Int, Int)]()
        var duplicates = [String]()
        for i in 0...2 {
            for j in 0...2 {
                let value = matrix[i][j]
                let stringValue = "\(value)"
                if store[stringValue] != nil {
                    store[stringValue] = store[stringValue]! + "," + "\(i) \(j)"
                    duplicates.append(stringValue)
                } else {
                    store[stringValue] = "\(i) \(j)"
                }
            }
        }
        
        for item in duplicates {
            let indexes = store[item]!
            let list = indexes.split(separator: ",")
            if !list.isEmpty {
                for indesx in list {
                    let ij = indesx.split(separator: " ")
                    let i = Int(ij[0])!
                    let j = Int(ij[1])!
                    let pair = (i, j)
                    result.append(pair)
                }
            }
        }
        return result
    }
}
