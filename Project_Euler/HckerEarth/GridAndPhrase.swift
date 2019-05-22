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

struct GridAndPhrase {
    var matrixString: Matrix<Character>!
    mutating func getMatchingCounts(for string: String, inputString: String) -> Int {
        var arrayOfString = [Character]()
        for char in inputString {
            arrayOfString.append(char)
        }
        do {
            matrixString = try Matrix(with: arrayOfString, rows: 5, columns: 5)
        } catch MatrixError.InvalidInputString(let description) {
            print(description)
        } catch let error {
            print(error.localizedDescription)
        }
        let matchingCounts = matrixString.getCountsThatMatchWith(input: string)
        return matchingCounts
    }
}
