//
//  GridAndPhrase.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/4/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

enum ProblemError: Error {
    case InvalidInput(desrciption: String)
}

class GridAndPhrase {
    func createTwoDGridMatrix(size rows: Int, columns: Int) throws -> [[String]] {
        guard rows >= 1 && columns <= 100 else {
            throw ProblemError.InvalidInput(desrciption: "Rows \(rows) should be in  >= 1 And Columns \(columns) should be in <= 100")
        }
        let matrix = Array(repeating: Array(repeating: "K", count: columns), count: rows)
        return matrix
    }
    
    func printMatrix(size rows: Int, columns: Int, matrix: [[String]]) {
        for row in 0..<rows {
            for col in 0..<columns {
                print(matrix[row][col], separator: " ", terminator: " ")
            }
            print("\n")
        }
    }
}
