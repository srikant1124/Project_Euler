//
//  BtreeProblemTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 6/13/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler
class BtreeProblemTests: XCTestCase {
    var jungle: Jungle!
    
    override func setUp() {
        super.setUp()
        jungle = Jungle()
    }

    override func tearDown() {
        super.tearDown()
        jungle = nil
    }
}
