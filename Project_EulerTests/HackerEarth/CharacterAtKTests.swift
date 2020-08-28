//
//  CharacterAtKTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/7/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class CharacterAtKTests: XCTestCase {
    var model: CharacterAtK!
    override func setUp() {
        super.setUp()
        model = CharacterAtK()
    }

    override func tearDown() {
        super.tearDown()
        model = nil
    }

    func testExample() {
        let arr = ["aaaaa", "bbbbb", "ccccc", "ddddd", "eeeee"]
        var qsArr = [Question]()
        let qs1 = Question(L: 3, R: 3, K: 3)
        let qs2 = Question(L: 1, R: 5, K: 16)
        let qs3 = Question(L: 3, R: 5, K: 15)
        qsArr.append(qs1)
        qsArr.append(qs2)
        qsArr.append(qs3)
        model.charAtKthPosition(arr: arr, qs: qsArr)
    }

}
