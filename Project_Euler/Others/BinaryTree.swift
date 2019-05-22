//
//  BinaryTree.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 5/19/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

enum NodeSide: Int {
    case left
    case right
}

struct TwoDNode<T> {
    var row: Int = 0
    var col: Int = 0
    var value: T?
}

class Node<T> {
    var value: TwoDNode<T>?
    var leftNode: Node?
    var rightNode: Node?
}

class MatrixToBinaryTree<T> {
    var rootNode: Node<T>?
    
    init(value: TwoDNode<T>) {
        rootNode = createNode(value: value)
    }
    
    func createNode(value: TwoDNode<T>) -> Node<T> {
        let node = Node<T>()
        let valueNode = value
        node.value = valueNode
        return node
    }
    
    func insertNode(value: TwoDNode<T>, currentNode: Node<T>?, maxRow: Int, maxCol: Int) {
        if (currentNode == nil) {
            rootNode = createNode(value: value)
        }
        if maxCol > currentNode?.value!.col ?? 0 {
            if let rightNode = currentNode?.rightNode {
                insertNode(value: value, currentNode: rightNode, maxRow: maxRow, maxCol: maxCol)
            } else {
                var editValue = value
                editValue.col += 1
                currentNode?.rightNode = createNode(value: editValue)
                insertNode(value: editValue, currentNode: currentNode?.rightNode, maxRow: maxRow, maxCol: maxCol)
            }
        }
        if maxRow > currentNode?.value!.row ?? 0 {
            if let leftNode = currentNode?.leftNode {
                insertNode(value: value, currentNode: leftNode, maxRow: maxRow, maxCol: maxCol)
            } else {
                var editValue = value
                editValue.row += 1
                currentNode?.leftNode = createNode(value: editValue)
                insertNode(value: editValue, currentNode: currentNode?.leftNode, maxRow: maxRow, maxCol: maxCol)
            }
        }
    }
    
    func getLeafNodes(rootNode: Node<T>?) -> Int {
        if rootNode == nil {
            return 0
        }
        if rootNode?.leftNode == nil && rootNode?.rightNode == nil {
            return 1
        } else {
            return getLeafNodes(rootNode: rootNode?.leftNode) + getLeafNodes(rootNode: rootNode?.rightNode)
        }
    }
}
