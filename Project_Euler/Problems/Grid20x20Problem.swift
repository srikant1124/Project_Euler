//
//  Grid20x20Problem.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 4/22/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

///In the 20×20 grid below, four numbers along a diagonal line have been marked in red.

/* 0  1  2  3  4  5  6  7  8  9  |10| 11 12 13 14 15 16 17 18 19
 0 08 02 22 97 38 15 00 40 00 75 |04| 05 07 78 52 12 50 77 91 08
 1 49 49 99 40 17 81 18 57 60 87 |17| 40 98 43 69 48 04 56 62 00
 2 81 49 31 73 55 79 14 29 93 71 |40| 67 53 88 30 03 49 13 36 65
 3 52 70 95 23 04 60 11 42 69 24 |68| 56 01 32 56 71 37 02 36 91
 4 22 31 16 71 51 67 63 89 41 92 |36| 54 22 40 40 28 66 33 13 80
 5 24 47 32 60 99 03 45 02 44 75 |33| 53 78 36 84 20 35 17 12 50
 6 32 98 81 28 64 23 67 10 26 38 |40| 67 59 54 70 66 18 38 64 70
 7 67 26 20 68 02 62 12 20 95 63 |94| 39 63 08 40 91 66 49 94 21
 8 24 55 58 05 66 73 99 26 97 17 |78| 78 96 83 14 88 34 89 63 72
 9 21 36 23 09 75 00 76 44 20 45 |35| 14 00 61 33 97 34 31 33 95
----------------------------------------------------------------
10 78 17 53 28 22 75 31 67 15 94 |03| 80 04 62 16 14 09 53 56 92
----------------------------------------------------------------
11 16 39 05 42 96 35 31 47 55 58 |88| 24 00 17 54 24 36 29 85 57
12 86 56 00 48 35 71 89 07 05 44 |44| 37 44 60 21 58 51 54 17 58
13 19 80 81 68 05 94 47 69 28 73 |92| 13 86 52 17 77 04 89 55 40
14 04 52 08 83 97 35 99 16 07 97 |57| 32 16 26 26 79 33 27 98 66
15 88 36 68 87 57 62 20 72 03 46 |33| 67 46 55 12 32 63 93 53 69
16 04 42 16 73 38 25 39 11 24 94 |72| 18 08 46 29 32 40 62 76 36
17 20 69 36 41 72 30 23 88 34 62 |99| 69 82 67 59 85 74 04 36 16
18 20 73 35 29 78 31 90 01 74 31 |49| 71 48 86 81 16 23 57 05 54
19 01 70 54 71 83 51 54 69 16 92 |33| 48 61 43 52 01 89 19 67 48
 
 The product of these numbers is 26 × 63 × 78 × 14 = 1788696.
 What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?
 */
//[4, 17, 40, 68, 36, 33, 40, 94, 78, 35, 3, 88, 44, 92, 57, 33, 72, 99, 49, 33]
//[78, 17, 53, 28, 22, 75, 31, 67, 15, 94, 3, 80, 4, 62, 16, 14, 9, 53, 56, 92]
//[8, 49, 31, 23, 51, 3, 67, 20, 97, 45, 3, 24, 44, 52, 26, 32, 40, 4, 5, 48]
//[1, 73, 36, 73, 57, 35, 47, 7, 55, 94, 35, 78, 63, 54, 84, 28, 37, 13, 62]
//
import Foundation

enum Elements: Int {
    case top
    case buttom
    case left
    case right
    case topLeft
    case topRight
    case buttomLeft
    case buttomRight
}

class Grid20x20Problem {
    var timeComplexity = TimeComplexity()
    var maxColumnIndex = 0
    var maxRowIndex = 0
    func convertStringRowxColumnGrid(string: [Substring], rows: Int, columns: Int) -> [[Int]] {
        let substrings = string
        var gridRxC = Array(repeating: Array(repeating: 0, count: rows), count: columns)
        var pointingIndex = 0
        for row in 0..<rows {
            for column in 0..<columns {
                let intValue = Int(String(substrings[pointingIndex]))
                gridRxC[row][column] = intValue ?? 0
                pointingIndex += 1
            }
        }
        return gridRxC
    }
    
    func printTheMatrix(grid: [[Int]], rows: Int, columns: Int) {
        for row in 0..<rows {
            for column in 0..<columns {
               print(grid[row][column], separator: " ", terminator: " ")
            }
            print("\n")
        }
    }
    
    func getLargestProductFromArrayWith(kDigitsAtATime: Int, arr: [Int]) -> Int {
        print(arr)
        var mult = 1
        var result = 0
        var fourNumbers = [Int]()
        for index in 0..<arr.count {
            var counter = 0
            for index1 in 0..<arr.count {
                if counter < kDigitsAtATime {
                    counter += 1
                    if arr.count > index + index1 {
                        let intValue = arr[index1 + index]
                        fourNumbers.append(intValue)
                        if intValue == 0 {
                            break
                        }
                        mult *= intValue
                    }
                } else {
                    break
                }
            }
            if mult > result {
                result = mult
            }
            print("Mult = \(mult) \(fourNumbers) = Result = \(result)")
            fourNumbers.removeAll()
            mult = 1
        }
        return result
    }
    
    func travelHorizontalyEachElementOf(squareMatrix grid: [[Int]], rows: Int, columns: Int) {
        for xCord in 0..<rows {
            for yCord in 0..<columns {
                print(grid[yCord][xCord], separator: " ", terminator: " ")
            }
            print("\n")
        }
    }
    
    func travelVerticallyEachElementOf(squareMatrix grid: [[Int]], rows: Int, columns: Int) {
        for xCord in 0..<rows {
            for yCord in 0..<columns {
                print(grid[xCord][yCord], separator: " ", terminator: " ")
            }
            print("\n")
        }
    }
    
    func downLeftTopRight(squareMatrix grid: [[Int]], rows: Int, columns: Int) {
        
    }
    // 8 2 2 7 8
    // 5 0 4 0 5
    // 4 5 7 8 5
    // 1 5 7 9 8
    // 2 5 7 1 8
    func topLeftRightDownDiogonal(squareMatrix grid: [[Int]], rows: Int, columns: Int) -> [Int] {
        var resultArr = [Int]()
        for rIndex in 0..<rows {
            let loopCount = rIndex + 1
            var customRowIndex = rIndex
            for cIndex in 0..<loopCount {
                //print("X = \(customRowIndex) Y = \(cIndex)")
                resultArr.append(grid[customRowIndex][cIndex])
                //print(grid[customRowIndex][cIndex], separator: " ", terminator: " ")
                customRowIndex -= 1
            }
            //print("\n")
        }
        
        let lastRow = rows - 1
        var startColIndex = 0
        for rIndex in 0..<lastRow {
            let loopCount = lastRow - rIndex
            startColIndex += 1
            var increament = 0
            var customRowIndex = lastRow
            for _ in 0..<loopCount {
                let cIndex = startColIndex + increament
                //print("X = \(customRowIndex) Y = \(customColIndex + increament)")
                //print(grid[customRowIndex][cIndex], separator: " ", terminator: " ")
                resultArr.append(grid[customRowIndex][cIndex])
                customRowIndex -= 1
                increament += 1
            }
            // print("\n")
        }
        return resultArr
    }
    
    func getMaximumProductOf4DigitsNumbers(matrix: [[Int]], rows: Int, columns: Int) -> Int {
        maxRowIndex = rows - 1
        maxColumnIndex = columns - 1
        var maximumProduct = 1
        for row in 0..<rows {
            for column in 0..<columns {
                let elements1 = getElementsOfIndex(matris: matrix, row: row, col: column, elementsType: .top)
                let elements2 = getElementsOfIndex(matris: matrix, row: row, col: column, elementsType: .buttom)
                let elements3 = getElementsOfIndex(matris: matrix, row: row, col: column, elementsType: .left)
                let elements4 = getElementsOfIndex(matris: matrix, row: row, col: column, elementsType: .right)
                let elements5 = getElementsOfIndex(matris: matrix, row: row, col: column, elementsType: .topLeft)
                let elements6 = getElementsOfIndex(matris: matrix, row: row, col: column, elementsType: .topRight)
                let elements7 = getElementsOfIndex(matris: matrix, row: row, col: column, elementsType: .buttomLeft)
                let elements8 = getElementsOfIndex(matris: matrix, row: row, col: column, elementsType: .buttomRight)
                let product1 = getProductOfArrayOfInts(arr: elements1)
                let product2 = getProductOfArrayOfInts(arr: elements2)
                let product3 = getProductOfArrayOfInts(arr: elements3)
                let product4 = getProductOfArrayOfInts(arr: elements4)
                let product5 = getProductOfArrayOfInts(arr: elements5)
                let product6 = getProductOfArrayOfInts(arr: elements6)
                let product7 = getProductOfArrayOfInts(arr: elements7)
                let product8 = getProductOfArrayOfInts(arr: elements8)
                let maxValue = getMax(valueA:
                    getMax(valueA:
                        getMax(valueA: product1,
                               valueB: product2),
                           valueB:
                        getMax(valueA: product3,
                               valueB: product4)),
                                      valueB:
                    getMax(valueA: product5,
                           valueB:
                        getMax(valueA: product6,
                               valueB:
                            getMax(valueA: product7,
                                   valueB: product8))))
                if maxValue > maximumProduct {
                    maximumProduct = maxValue
                }
            }
        }
        return maximumProduct
    }
    
    func getMax(valueA: Int, valueB: Int) -> Int {
        return valueA > valueB ? valueA : valueB
    }
    
    func getProductOfArrayOfInts(arr: [Int]) -> Int {
        var product = 1
        for eachElement in  arr {
            if eachElement == 0 {
                break
            } else {
                product *= eachElement
            }
        }
        return product
    }
    
    func getElementFromMatrix(matrix: [[Int]], row: Int, col: Int) -> Int {
        if isValidIndex(rowColIndex: row) && isValidIndex(rowColIndex: col) {
            return matrix[row][col]
        } else {
            return 0
        }
    }
    
    var rowIndex1 = 0
    var rowIndex2 = 0
    var rowIndex3 = 0
    var colIndex1 = 0
    var colIndex2 = 0
    var colIndex3 = 0
    
    func getElementsOfIndex(matris: [[Int]], row: Int, col: Int, elementsType: Elements) -> [Int] {
        rowIndex1 = row
        rowIndex2 = row
        rowIndex3 = row
        colIndex1 = col
        colIndex2 = col
        colIndex3 = col
        switch elementsType {
        case .top:
            rowMinus(row: row)
        case .buttom:
            rowPlus(row: row)
        case .left:
            colMinus(col: col)
        case .right:
            colPlus(col: col)
        case .topLeft:
            colMinus(col: col)
            rowMinus(row: row)
        case .topRight:
            colPlus(col: col)
            rowMinus(row: row)
        case .buttomLeft:
            colMinus(col: col)
            rowPlus(row: row)
        case .buttomRight:
            colPlus(col: col)
            rowPlus(row: row)
        }
        let firstElementIndex  = getElementFromMatrix(matrix: matris, row: row, col: col)
        let secondElementIndex = getElementFromMatrix(matrix: matris, row: rowIndex1, col: colIndex1)
        let thirdElementIndex  = getElementFromMatrix(matrix: matris, row: rowIndex2, col: colIndex2)
        let fourthElementIndex = getElementFromMatrix(matrix: matris, row: rowIndex3, col: colIndex3)
        return [firstElementIndex, secondElementIndex, thirdElementIndex, fourthElementIndex]
    }
    
    func rowMinus(row: Int) {
        rowIndex1 = row - 1
        rowIndex2 = row - 2
        rowIndex3 = row - 3
    }
    
    func rowPlus(row: Int) {
        rowIndex1 = row + 1
        rowIndex2 = row + 2
        rowIndex3 = row + 3
    }
    
    func colMinus(col: Int) {
        colIndex1 = col - 1
        colIndex2 = col - 2
        colIndex3 = col - 3
    }
    
    func colPlus(col: Int) {
        colIndex1 = col + 1
        colIndex2 = col + 2
        colIndex3 = col + 3
    }
    
    func isValidIndex(rowColIndex: Int) -> Bool {
        if rowColIndex < 0 ||
            rowColIndex > maxRowIndex ||
            rowColIndex < 0 ||
            rowColIndex > maxColumnIndex {
            return false
        }
        return true
    }
}
