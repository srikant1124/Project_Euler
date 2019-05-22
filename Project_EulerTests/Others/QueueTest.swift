//
//  QueueTest.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 5/19/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class QueueTest: XCTestCase {
    var queue: Queue<Int>!
    override func setUp() {
        super.setUp()
        queue = Queue<Int>()
    }

    override func tearDown() {
        super.tearDown()
        queue = nil
    }

    func testQueue() {
        queue.enQueue(insert: 12)
        queue.enQueue(insert: 13)
        queue.enQueue(insert: 14)
        let value = queue.deQueue()
        XCTAssertEqual(value, 12)
        if let front = queue.front {
            XCTAssertEqual(front, 13)
        } else {
            XCTFail("Should not fail")
        }
        queue.enQueue(insert: 15)
        if let front = queue.front {
            XCTAssertEqual(front, 13)
        } else {
            XCTFail("Should not fail")
        }
    }
}
