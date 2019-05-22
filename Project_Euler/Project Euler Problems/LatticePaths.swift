//
//  LatticePaths.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/19/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct LatticePaths {
    var tree: MatrixToBinaryTree<Int>!
    mutating func getTotalLatticepPath(matrixRow: Int, matrixCol: Int) -> Int {
        let row = matrixRow + 1
        let col = matrixCol + 1
        createAndPrintMatrix(matrixRow: row, matrixCol: col)
        let rootNodeValue = TwoDNode(row: 0, col: 0, value: 1)
        self.tree = MatrixToBinaryTree(value: rootNodeValue)
        tree.insertNode(value: rootNodeValue, currentNode: self.tree.rootNode!, maxRow: matrixRow, maxCol: matrixRow)
        let leafNodes = tree.getLeafNodes(rootNode: tree.rootNode)
        print(leafNodes)
        return leafNodes
    }
    
    func createAndPrintMatrix(matrixRow: Int, matrixCol: Int) {
        var matrix: Matrix<Int>!
        do {
            var arr = [Int]()
            for index in 1...(matrixRow * matrixCol) {
                arr.append(index)
            }
            matrix = try Matrix(with: arr, rows: matrixRow, columns: matrixCol)
        } catch let error {
            print(error)
        }
        matrix.printMatrix()
    }
    
    func getCountOfpaths(number: Int) -> Double {
        let factModel = FactorialComputation()
        let num = 2 * number
        var result = 0.0
        do {
            let factorialOf2x20 = try factModel.factorialOf(number: num)
            let factorialOf20 = try factModel.factorialOf(number: number)
            let lowerPart = factorialOf20 * factorialOf20
            result = factorialOf2x20 / lowerPart
        } catch  {
            
        }
        return result
    }
}
