//
//  GridAndPhraseTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/4/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class GridAndPhraseTests: XCTestCase {
    var model: GridAndPhrase!
    override func setUp() {
        super.setUp()
        model = GridAndPhrase()
    }

    override func tearDown() {
        super.tearDown()
        model = nil
    }

    func testGridAndPhraseProblem() {
        //n >= 1
        let row = 4
        //m <= 1
        let column = 5
        var matrix: [[String]]!
        do {
            matrix = try model.createTwoDGridMatrix(size: row, columns: column)
            XCTAssertEqual(matrix.count, row)
            XCTAssertEqual(matrix[0].count, column)
        } catch ProblemError.InvalidInput(let description) {
            XCTFail(description)
            print(description)
            return
        } catch let error {
            XCTFail(error.localizedDescription)
            print(error)
            return
        }
        model.printMatrix(size: row, columns: column, matrix: matrix)
    }
}
