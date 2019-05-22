//
//  Matrix.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/4/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

enum VisitType: Int {
    //    case verticallyMovingtop
    case verticallyMovingButtom //
    //    case horizontallyMovingLeft
    case horizontallyMovingRight //
    //    case diogonalyMovingTopleft
    case diogonalyMovingTopright //
    //    case diogonalyMovingButtomLeft
    case diogonalyMovingButtomRight //
}

enum MatrixError: Error {
    case InvalidRowAnColumn(description: String)
    case InvalidInputString(description: String)
}

protocol MatrixProtocol {
    var rowsCount: Int { get }
    var columnsCount: Int { get }
    
    func isValidIndex(colIndex: Int) -> Bool
    func isValidIndex(rowIndex: Int) -> Bool
    func printMatrix()
}

struct Matrix<T>: MatrixProtocol {
    
    var rowsCount: Int { return arrOfArr.count }
    var columnsCount: Int { return arrOfArr[0].count }
    private var arrOfArr: [[T]]!//[[T.Type]]!
    func getValue(row: Int, col: Int) -> T? {
        return getValueAtPosition(atRow: row, atCol: col)
    }

    mutating func getCountsThatMatchWith(input: String) -> Int {
        var counts = 0
        for row in 0..<rowsCount {
            for col in 0..<columnsCount {
                let charArray2 = get4ItemsAtTimeFromMatrix(atRow: row, atCol: col, visitType: .verticallyMovingButtom)
                let charArray4 = get4ItemsAtTimeFromMatrix(atRow: row, atCol: col, visitType: .horizontallyMovingRight)
                let charArray6 = get4ItemsAtTimeFromMatrix(atRow: row, atCol: col, visitType: .diogonalyMovingTopright)
                let charArray8 = get4ItemsAtTimeFromMatrix(atRow: row, atCol: col, visitType: .diogonalyMovingButtomRight)
                print([charArray2, charArray4, charArray6, charArray8])
                countMatches(arr: [charArray2, charArray4, charArray6, charArray8], count: &counts, inpuString: input)
            }
        }
        return counts
    }
    
    func countMatches(arr: [String], count: inout Int, inpuString: String) {
        for each in arr {
            if each == inpuString {
                count += 1
            }
        }
    }
    
    var rowIndex1 = 0
    var rowIndex2 = 0
    var rowIndex3 = 0
    var colIndex1 = 0
    var colIndex2 = 0
    var colIndex3 = 0
    
    mutating func get4ItemsAtTimeFromMatrix(atRow row: Int, atCol col: Int, visitType: VisitType) -> String {
        rowIndex1 = row
        rowIndex2 = row
        rowIndex3 = row
        colIndex1 = col
        colIndex2 = col
        colIndex3 = col
        switch visitType {
        case .verticallyMovingButtom:
            rowPlus(row: row)
        case .horizontallyMovingRight:
            colPlus(col: col)
        case .diogonalyMovingTopright:
            colPlus(col: col)
            rowMinus(row: row)
        case .diogonalyMovingButtomRight:
            colPlus(col: col)
            rowPlus(row: row)
        }
        var matchingString = ""
        if let firstValue  = getValueAtPosition(atRow: row, atCol: col) as? Character {
            matchingString += String(firstValue)
        }
        if let secondValue = getValueAtPosition(atRow: rowIndex1, atCol: colIndex1) as? Character {
            matchingString += String(secondValue)
        }
        if let thirdValue  = getValueAtPosition(atRow: rowIndex2, atCol: colIndex2) as? Character {
            matchingString += String(thirdValue)
        }
        if let fourthValue = getValueAtPosition(atRow: rowIndex3, atCol: colIndex3) as? Character {
            matchingString += String(fourthValue)
        }
        return matchingString
    }
    
    mutating func rowMinus(row: Int) {
        rowIndex1 = row - 1
        rowIndex2 = row - 2
        rowIndex3 = row - 3
    }
    
    mutating func rowPlus(row: Int) {
        rowIndex1 = row + 1
        rowIndex2 = row + 2
        rowIndex3 = row + 3
    }
    
    mutating func colMinus(col: Int) {
        colIndex1 = col - 1
        colIndex2 = col - 2
        colIndex3 = col - 3
    }
    
    mutating func colPlus(col: Int) {
        colIndex1 = col + 1
        colIndex2 = col + 2
        colIndex3 = col + 3
    }
}

extension Matrix {
    
    init(rows: Int, columns: Int, initializeValue: T) throws {
        guard rows > 0 && columns > 0 else {
            throw MatrixError.InvalidRowAnColumn(description: "Rows = \(rows) and Columns = \(columns) should be Valid")
        }
        createArrayAsMatrix(rows: rows, columns: columns, initializeValue: initializeValue)
    }
    
    init(with strings: [T], rows: Int, columns: Int) throws {
        guard strings.count > 0 else {
            throw MatrixError.InvalidInputString(description: "String should not be strings.isEmpty = \(strings.isEmpty)")
        }
        createArrayAsMatrix(rows: rows, columns: columns, initializeValue: strings[0].self)
        convertStringsToMatrix(string: strings, rows: rows, cols: columns)
    }
    
    private mutating func createArrayAsMatrix(rows: Int, columns: Int, initializeValue: T) {
        let colArr = Array(repeating: initializeValue, count: columns) //T.self
        arrOfArr = Array(repeating: colArr, count: rows)
    }
    
    func printMatrix() {
        for row in 0..<rowsCount {
            for col in 0..<columnsCount {
                if let value = getValueAtPosition(atRow: row, atCol: col) {
                    print(value, separator: " ", terminator: "  ")
                } else {
                    fatalError("Value not Found at index")
                }
            }
            print("\n")
        }
    }
    
    mutating func convertStringsToMatrix(string: [T], rows: Int, cols: Int) {
        var pointingIndex = 0
        for row in 0..<rowsCount {
            for column in 0..<columnsCount {
                let value = string[pointingIndex]
                arrOfArr[row][column] = value
                pointingIndex += 1
            }
        }
    }
    
    func isValidIndex(colIndex: Int) -> Bool {
        if colIndex >= 0 &&
            colIndex <= columnsCount - 1 {
            return true
        }
        return false
    }
    
    func isValidIndex(rowIndex: Int) -> Bool {
        if rowIndex >= 0 && rowIndex <= rowsCount - 1{
            return true
        }
        return false
    }
    
    private func getValueAtPosition(atRow row: Int, atCol col: Int) -> T? {
        if isValidIndex(rowIndex: row) && isValidIndex(colIndex: col) {
            return arrOfArr[row][col]
        } else {
            return nil
        }
    }
}
