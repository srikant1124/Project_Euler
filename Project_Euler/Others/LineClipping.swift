//
//  LineClipping.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/12/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Point {
    var xCord = 0
    var yCord = 0
}

struct Rectangle {
    var sideA: Line
    var sideB: Line
    var sideC: Line
    var sideD: Line
    var sides = [Line]()
    init(xMin: Int, yMin: Int, xMax: Int, yMax: Int) {
        sideA = Line(point1: Point(xCord: xMin, yCord: yMin), point2: Point(xCord: xMin, yCord: yMax))
        sideB = Line(point1: Point(xCord: xMin, yCord: yMax), point2: Point(xCord: xMax, yCord: yMax))
        sideC = Line(point1: Point(xCord: xMax, yCord: yMax), point2: Point(xCord: xMax, yCord: yMin))
        sideD = Line(point1: Point(xCord: xMin, yCord: yMin), point2: Point(xCord: xMax, yCord: yMin))
        sides = [sideA, sideB, sideC, sideD]
    }
}

struct Line {
    var firstPoint: Point
    var secondPoint: Point
    
     func slope() -> Int {
        let dx = firstPoint.xCord - secondPoint.xCord
        let dy = firstPoint.yCord - secondPoint.yCord
        #warning("Thread 1: Fatal error: Division by zero")
        let slope = dy / dx
        return slope
    }
    
    init(point1: Point, point2: Point) {
        self.firstPoint = point1
        self.secondPoint = point2
    }
}

struct LineClipping {
    
    func isLinePartiallyIntersected(inputLine: Line, rectangle: Rectangle) -> Bool {
        for eachSide in rectangle.sides {
            if areLinesIntersected(line1: eachSide, line2: inputLine) {
                print("\(inputLine) intersect with \(eachSide)")
                return true
            }
        }
        return false
    }
    
    fileprivate func areLinesIntersected(line1: Line, line2: Line) -> Bool {
        let slope1 = line1.slope()
        let slope2 = line2.slope()
        if abs(slope1 - slope2) > 0 {
            print(line1, line2)
            return true
        }
        print(line1, line2)
        return true
    }
    
}
