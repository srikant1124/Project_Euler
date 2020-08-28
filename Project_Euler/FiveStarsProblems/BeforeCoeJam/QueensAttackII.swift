//
//  QueensAttackII.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation
import UIKit

struct QueensAttackII {
    /*
    Java Solution Here is my solution in Java that passes all cases in O(k) time with O(1) space.
    Here is how it works: We loop through the obstacles given and keep track of the closest one to our queen in each of the 8 directions, then we calculate the distance from our queen to each of the closest obstacles and return their sum.
    */
    
    func min(a: Int, b: Int) -> Int {
        return a > b ? b : a
    }
    
    func opti_queensAttack(n: Int, k: Int, r_q: Int, c_q: Int, obstacles: [[Int]]) -> Int {
        let queenX = r_q
        let queenY = c_q
        
        //Row Column coordinates of the closes object in each direction
        var obst_R_Pos = (x: -1, y: -1)
        var obst_BR_pos = (x: -1, y: -1)
        var obst_B_Pos = (x: -1, y: -1)
        var obst_BL_Pos = (x: -1, y: -1)
        var obst_L_Pos = (x: -1, y: -1)
        var obst_TL_Pos = (x: -1, y: -1)
        var obst_T_Pos = (x: -1, y: -1)
        var obst_TR_Pos = (x: -1, y: -1)
        
        //Total squares attacked by the queen
        var reachableSquares = 0;
        
        //Finds the closest object in each direction
        for obs in obstacles {
            let obstacleX = obs[0]
            let obstacleY = obs[1]
            
            //Right
            if obstacleY > queenY &&
                obstacleX == queenX &&
                (obstacleY < obst_R_Pos.y || obst_R_Pos.x == -1) {
                obst_R_Pos = (obstacleX, obstacleY)
            }
            
            //Left
            if obstacleY < queenY &&
                obstacleX == queenX &&
                (obstacleY > obst_L_Pos.y || obst_L_Pos.x == -1) {
                obst_L_Pos = (obstacleX, obstacleY)
            }
            
            //Top
            if obstacleX > queenX &&
                obstacleY == queenY &&
                (obstacleX < obst_T_Pos.x || obst_T_Pos.x == -1) {
                obst_T_Pos = (obstacleX, obstacleY)
            }
            
            //Bottom
            if obstacleX < queenX &&
                obstacleY == queenY &&
                (obstacleX > obst_B_Pos.x || obst_B_Pos.x == -1) {
                obst_B_Pos = (obstacleX, obstacleY)
            }
            
            //Bottom Right
            if(queenX - obstacleX == obstacleY - queenY
                && obstacleY > queenY && obstacleX < queenX
                && ((obstacleX > obst_BR_pos.x &&
                    obstacleY < obst_BR_pos.y) ||
                    obst_BR_pos.x == -1)) {
                obst_BR_pos = (obstacleX, obstacleY)
            }
            
            //Bottom Left
            if(queenX - obstacleX == queenY - obstacleY &&
                obstacleY < queenY &&
                obstacleX < queenX &&
                ((obstacleX > obst_BL_Pos.x && obstacleY > obst_BL_Pos.y) || obst_BL_Pos.x == -1)) {
                obst_BL_Pos = (obstacleX, obstacleY)
            }
            
            //Top Left
            if(queenY - obstacleY == obstacleX - queenX &&
                obstacleY < queenY &&
                obstacleX > queenX &&
                ((obstacleX < obst_TL_Pos.x && obstacleY > obst_TL_Pos.y) || obst_TL_Pos.x == -1)) {
                obst_TL_Pos = (obstacleX, obstacleY)
            }
            
            //Top Right
            if(obstacleX - queenX == obstacleY - queenY && obstacleY > queenY
                && obstacleX > queenX && ((obstacleX < obst_TR_Pos.x && obstacleY < obst_TR_Pos.y) || obst_TR_Pos.x == -1)) {
                obst_TR_Pos = (obstacleX, obstacleY)
            }
            
        }
        
        //Calculates the distance to the closest obstacle in each direction and adds it to reachableSquares
        //R B L T
        reachableSquares += (obst_R_Pos.y != -1) ? (obst_R_Pos.y - queenY - 1) : n - queenY
        reachableSquares += (obst_B_Pos.x != -1) ? (queenX - obst_B_Pos.x - 1) : queenX - 1
        reachableSquares += (obst_L_Pos.y != -1) ? (queenY - obst_L_Pos.y - 1) : queenY - 1
        reachableSquares += (obst_T_Pos.x != -1) ? (obst_T_Pos.x - queenX - 1) : n - queenX
        
        //BR BL TL TR
        reachableSquares += (obst_BR_pos.y != -1) ? (obst_BR_pos.y - queenY - 1) : min(a: queenX - 1, b: n - queenY)
        reachableSquares += (obst_BL_Pos.x != -1) ? (queenY - obst_BL_Pos.y - 1) : min(a: queenX - 1, b: queenY - 1)
        reachableSquares += (obst_TL_Pos.y != -1) ? (queenY - obst_TL_Pos.y - 1) : min(a: n - queenX, b: queenY - 1)
        reachableSquares += (obst_TR_Pos.x != -1) ? (obst_TR_Pos.y - queenY - 1) : min(a: n - queenX, b: n - queenY)
        print(reachableSquares)
        return reachableSquares
    }
    
    enum Direction: CaseIterable {
        case Top
        case Bottom
        case Left
        case Right
        case TL
        case BR
        case TR
        case BL
    }
    
    func queensAttack(n: Int, k: Int, r_q: Int, c_q: Int, obstacles: [[Int]]) -> Int {
        var map: [Direction: (Int, Int)] = [:]
        let queenX = r_q - 1
        let queenY = c_q - 1
        
        var chess = Array(repeating: Array(repeating: 0, count: n), count: n)
        chess[queenX][queenY] = 1
        
        for pos in obstacles {
            chess[pos[0] - 1][pos[1] - 1] = 2
        }
        
        for row in 0..<n {
            for col in 0..<n {
                if chess[row][col] == 0 {
                    print("(\(row),\(col))", separator: " ", terminator: " ")
                } else {
                    if chess[row][col] == 1 {
                        print("  Q  ", separator: " ", terminator: " ")
                    } else {
                        print("  X  ", separator: " ", terminator: " ")
                    }
                }
            }
            print("\n")
        }
        
        for direction in Direction.allCases {
            map[direction] = (-1, -1)
        }
        
        for obs in obstacles {
            let obsX = obs[0] - 1
            let obsY = obs[1] - 1
            let obsPos = (obsX, obsY)
            
            if queenX == obsX {
                if queenY > obsY {
                    updateMap(map: &map,
                              direction: .Left,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                } else {
                    updateMap(map: &map,
                              direction: .Right,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                }
            }else if queenY == obsY {
                if queenX > obsX {
                    updateMap(map: &map,
                              direction: .Top,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                } else {
                    updateMap(map: &map,
                              direction: .Bottom,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                }
            } else if slope(pos: obsPos, qX: queenX, qY: queenY) == 1 { // Positive Slope
                if obsX > queenX {
                    updateMap(map: &map,
                              direction: .BR,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                } else {
                    updateMap(map: &map,
                              direction: .TL,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                }
            } else if slope(pos: obsPos, qX: queenX, qY: queenY) == -1 { // Negative Slope
                if obsX > queenX {
                    updateMap(map: &map,
                              direction: .BL,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                } else {
                    updateMap(map: &map,
                              direction: .TR,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                }
            }
        }
        
        var sum = 0
        for (item, value) in map {
            //print("\(item) = \(value)")
            if value.0 == -1 && value.1 == -1 {
                switch item {
                case .Top:
                    sum += queenX
                case .Bottom:
                    sum += n - 1 - queenX
                case .Left:
                    sum += queenY
                case .Right:
                    sum += n - 1 - queenY
                case .TL:
                    sum += min(a: queenX, b: queenY)
                case .BR:
                    sum += min(a: n - 1 - queenX, b: n - 1 - queenY)
                case .TR:
                    sum += min(a: queenX, b: n - 1 - queenY)
                case .BL:
                    sum += min(a: n - 1 - queenX, b: queenY)
                }
            } else {
                let dist = distance(pos1: (queenX, queenY), pos2: value) - 1
                sum += dist
                //print("\(item) = \(value) sum : \(dist)")
            }
        }
        //print("Total = \(sum)")
        return sum
    }
    
    func updateMap(map: inout [Direction: (Int, Int)], direction: Direction, queenX: Int, queenY: Int, obsPos: (Int, Int)) {
        if map[direction] != nil {
              let storePosition = map[direction]!
              let dist1 = distance(pos1: (queenX, queenY), pos2: storePosition)
              let dist2 = distance(pos1: (queenX, queenY), pos2: obsPos)
              map[direction] = dist1 > dist2 ? obsPos : storePosition
          }
    }
    
    func max(a: Int, b: Int) -> Int {
        return a > b ? a : b
    }
    
    func distance(pos1: (Int, Int), pos2: (Int, Int)) -> Int {
        var result = abs(pos1.0 - pos2.0)
        if result == 0 {
            result = abs(pos1.1 - pos2.1)
        }
        return result
    }
    
    func slope(pos: (Int, Int), qX: Int, qY: Int) -> Int {
        let top = Int(qY - pos.1)
        let down = Int(qX - pos.0)
        var slope = 0
        if abs(top) == abs(down) {
            slope = top / down
        }
        return slope
    }
   /*
    func one_queensAttack(n: Int, k: Int, r_q: Int, c_q: Int, obstacles: [[Int]]) -> Int {
        
        var attackPoints = 0
        let q_r = r_q - 1
        let q_c = c_q - 1
        
        var chess = Array(repeating: Array(repeating: 0, count: n), count: n)
        chess[q_r][q_c] = 1
        
        for pos in obstacles {
            chess[pos[0] - 1][pos[1] - 1] = 2
        }
        
        for row in 0..<n {
            for col in 0..<n {
                if chess[row][col] == 0 {
                    print("(\(row),\(col))", separator: " ", terminator: " ")
                } else {
                    if chess[row][col] == 1 {
                        print("  Q  ", separator: " ", terminator: " ")
                    } else {
                        print("  X  ", separator: " ", terminator: " ")
                    }
                }
            }
            print("\n")
        }
        
        for row in (0..<q_r).reversed() {
            if chess[row][q_c] == 2 {
                break
            }
            attackPoints += 1
        }

        for row in ((q_r + 1)..<n) {
            if chess[row][q_c] == 2 {
                break
            }
            attackPoints += 1
        }
        
        for col in (0..<q_c).reversed() {
            if chess[q_r][col] == 2 {
                break
            }
            attackPoints += 1
        }
        
        for col in ((q_c + 1)..<n) {
            if chess[q_r][col] == 2 {
                break
            }
            attackPoints += 1
        }
        
        var row = q_r - 1
        var col = q_c - 1
        while row != -1 && col != -1 {
            if chess[row][col] == 2 {
                break
            }
            attackPoints += 1
            row -= 1
            col -= 1
        }


        row = q_r + 1
        col = q_c + 1
        while row != n && col != n {
            if chess[row][col] == 2 {
                break
            }
            attackPoints += 1
            row += 1
            col += 1
        }

        row = q_r - 1
        col = q_c + 1
        while row != -1 && col != n {
            if chess[row][col] == 2 {
                break
            }
            attackPoints += 1
            row -= 1
            col += 1
        }

        row = q_r + 1
        col = q_c - 1
        while row != n && col != -1 {
            if chess[row][col] == 2 {
                break
            }
            attackPoints += 1
            row += 1
            col -= 1
        }
        return attackPoints
    }
    
    func two_queensAttack(n: Int, k: Int, r_q: Int, c_q: Int, obstacles: [[Int]]) -> Int {
        var obsMap = [String: Bool]()
        var map = [Direction: (Int, Int)]()
        
        let queenX = r_q - 1
        let queenY = c_q - 1
        map[.Left] = (queenX, 0)
        map[.Right] = (queenX, n - 1)
        map[.Top] = (0, queenY)
        map[.Bottom] = (n - 1, queenY)
        let smallest = min(a: queenX, b: queenY)
        let biggest = max(a: queenX, b: queenY)
        map[.TL] = (queenX - smallest, queenY - smallest)
        map[.BR] = (queenX + (n - 1 - biggest), queenY + (n - 1 - biggest))
        
        if queenY + queenX <= n - 1 {
            map[.BL] = (queenX + smallest, queenY - smallest)
        } else {
            let diff = (n - 1) - queenX
            let blPos = (queenX + diff, queenY - diff)
            map[.BL] = blPos
        }
        
        if queenY + queenX <= n - 1 {
            map[.TR] = (queenX - biggest, queenY + biggest)
        } else {
            let diff = (n - 1) - queenY
            let trPos = (queenX - diff, queenY + diff)
            map[.TR] = trPos
        }
        
        for item in map {
            print("\(item.key) = \(item.value)")
        }
        
        for obs in obstacles {
            let obsX = obs[0] - 1
            let obsY = obs[1] - 1
            let obsPos = (obsX, obsY)
            obsMap["\(obsPos.0),\(obsPos.1)"] = true
            if queenX == obsX { //Horizontal
                if queenY > obsY {
                    updateMap(map: &map,
                              direction: .Left,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                } else {
                    updateMap(map: &map,
                              direction: .Right,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                }
            }else if queenY == obsY { // Vertical
                if queenX > obsX {
                    updateMap(map: &map,
                              direction: .Top,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                } else {
                    updateMap(map: &map,
                              direction: .Bottom,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                }
            } else if slope(pos: obsPos, qX: queenX, qY: queenY) == 1 { // Positive Slope
                if obsX > queenX {
                    updateMap(map: &map,
                              direction: .BR,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                } else {
                    updateMap(map: &map,
                              direction: .TL,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                }
            } else if slope(pos: obsPos, qX: queenX, qY: queenY) == -1 { // Negative Slope
                if obsX > queenX {
                    updateMap(map: &map,
                              direction: .BL,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                } else {
                    updateMap(map: &map,
                              direction: .TR,
                              queenX: queenX,
                              queenY: queenY,
                              obsPos: obsPos)
                }
            }
        }

        var sum = 0
        for (item, value) in map {
            let dist = distance(pos1: (queenX, queenY), pos2: value)
            print("\(item) = \(value) sum : \(dist)")
            sum += dist
            if obsMap["\(value.0),\(value.1)"] != nil {
                sum -= 1
            }
        }
        print("Total = \(sum)")
        return sum
    }*/
}
