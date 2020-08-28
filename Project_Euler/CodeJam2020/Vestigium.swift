//
//  Vestigium.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/4/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Vestigium {
    
    func solve(cases: [Int], sizes: [Int], arrOfMatrix: [[[Int]]]) {
        for index in 0..<cases.count {
            traceMatrix(testCases: cases[index], size: sizes[index], matrix: arrOfMatrix[index])
        }
    }
    
    func traceMatrix(testCases: Int, size: Int, matrix: [[Int]]) {
        var dSum = 0
        var rowDuplicate = 0
        var colDuplicate = 0
        var rowMap = [Int: Int]()
        
        var row = 0
         for col in 0..<size {
            dSum += matrix[row][col]
            row += 1
        }
        
        var colArray = [[Int: Int]]()
        for _ in 0..<size {
            let localColMap = [Int: Int]()
            colArray.append(localColMap)
        }
        
        for row in 0..<size {
            rowMap.removeAll()
            for col in 0..<size {
                if rowMap[matrix[row][col]] == nil {
                    rowMap[matrix[row][col]] = 1
                } else {
                    rowMap[matrix[row][col]]! += 1
                }
                
                if colArray[col][matrix[row][col]] == nil {
                    colArray[col][matrix[row][col]] = 1
                } else {
                    colArray[col][matrix[row][col]]! += 1
                }
            }
            for value in rowMap.values {
                if value > 1 {
                    rowDuplicate += 1
                    break
                }
            }
        }
        
        for eachColMap in colArray {
            for value in eachColMap.values {
                if value > 1 {
                    colDuplicate += 1
                    break
                }
            }
        }
        print("Case #\(testCases): \(dSum) \(rowDuplicate) \(colDuplicate)", separator: " ", terminator: "\n")
    }
}


/*func traceMatrix(testCases: Int, matrix: [[Int]]) {
    var dSum = 0
    var rowDuplicate = 0
    var colDuplicate = 0
    var rowMap = [Int: Int]()
    let size = matrix[0].count
    
    var row = 0
    for col in 0..<size {
        dSum += matrix[row][col]
        row += 1
    }
    
    var colArray = [[Int: Int]]()
    for _ in 0..<size {
        let localColMap = [Int: Int]()
        colArray.append(localColMap)
    }
    
    for row in 0..<size {
        rowMap.removeAll()
        for col in 0..<size {
            if rowMap[matrix[row][col]] == nil {
                rowMap[matrix[row][col]] = 1
            } else {
                rowMap[matrix[row][col]]! += 1
            }
            
            if colArray[col][matrix[row][col]] == nil {
                colArray[col][matrix[row][col]] = 1
            } else {
                colArray[col][matrix[row][col]]! += 1
            }
        }
        for value in rowMap.values {
            if value > 1 {
                rowDuplicate += 1
                break
            }
        }
    }
    
    for eachColMap in colArray {
        for value in eachColMap.values {
            if value > 1 {
                colDuplicate += 1
                break
            }
        }
    }
    print("Case #\(testCases): \(dSum) \(rowDuplicate) \(colDuplicate)", separator: " ", terminator: "\n")
}

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for qItr in 1...q {
    guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    let container: [[Int]] = AnyIterator{ readLine() }.prefix(n).map {
        let containerRow: [Int] = $0.split(separator: " ").map {
            if let containerItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
                return containerItem
            } else { fatalError("Bad input") }
        }

        guard containerRow.count == n else { fatalError("Bad input") }

        return containerRow
    }

    guard container.count == n else { fatalError("Bad input") }

    traceMatrix(testCases: qItr, matrix: container)
}
*/
