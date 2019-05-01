//
//  GenericStack.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 4/30/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Stack<T> {
    private var stack = [Any]()
    var count: Int { return stack.count }
    var isEmpty: Bool { return stack.isEmpty }
    mutating func push(value: T) {
        stack.append(value)
    }
    @discardableResult
    mutating func pop() -> T? {
        if !isEmpty {
            return stack.removeLast() as? T
        } else {
            return nil
        }
    }
    func top() -> T? {
        return stack.last as? T
    }
}
