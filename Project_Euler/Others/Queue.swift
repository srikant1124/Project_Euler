//
//  Queue.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/19/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Queue<T> {
    private var array = [T]()
    var front: T? { return array.first }
    var isEmpty: Bool { return array.isEmpty }
    var count: Int { return array.count }
    
    mutating func enQueue(insert element: T) {
        array.append(element)
    }
    
    mutating func deQueue() -> T? {
        return array.removeFirst()
    }

}
