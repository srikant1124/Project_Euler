//
//  BeautifulTriplets.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/11/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

// Favourite

struct BeautifulTriplets {
    
    func not_beautifulTriplets(d: Int, arr: [Int]) -> Int {
        var count = 0
        for indexI in 0...arr.count - 3 {
            for indexJ in (indexI + 1)...arr.count - 2 {
                for indexK in (indexJ + 1)...arr.count - 1 {
                    let a = arr[indexI]
                    let b = arr[indexJ]
                    let c = arr[indexK]
                    if b - a == d && d == c - b {
                        print("a = \(a) b = \(b) c = \(c)")
                        count += 1
                    }
                }
            }
        }
        return count
    }
    
    func no_beautifulTriplets(d: Int, arr: [Int]) -> Int {
        var count = 0
        if arr.count < 3 {
            return count
        }
        for indexI in 0...arr.count - 3 {
            for indexJ in (indexI + 1)...arr.count - 2 {
                let a = arr[indexI]
                let b = arr[indexJ]
                if b - a == d {
                    for indexK in (indexJ + 1)...arr.count - 1 {
                        let c = arr[indexK]
                        if d == c - b {
                            print("a = \(a) b = \(b) c = \(c)")
                            count += 1
                        }
                    }
                }
            }
        }
        return count
    }
    
    func not_sorted_beautifulTriplets(d: Int, arr: [Int]) -> Int {
        var count = 0
        var map: [Int: Int] = [:]
        for no in arr {
            let value = map[no] ?? 0
            map[no] = value > 0 ? value + 1 : 1
        }
        for no in arr {
            let value = map[no] ?? 0
            map[no] = value > 0 ? value + 1 : 1
            let valueI = map[no + d] ?? 0
            let valueJ = map[no + 2 * d] ?? 0
            count += valueI * valueJ
        }
        return count
    }
    
    func beautifulTriplets(d: Int, arr: [Int]) -> Int {
          var count = 0
          var map: [Int: Int] = [:]
          for no in arr {
              let value = map[no] ?? 0
              map[no] = value > 0 ? value + 1 : 1
              let valueI = map[no - d] ?? 0
              let valueJ = map[no - (2 * d)] ?? 0
              count += valueI * valueJ
          }
          return count
      }
}
