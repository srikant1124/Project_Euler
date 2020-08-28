//
//  CutBamboo.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 2/13/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct CutBamboo {
    func cutBamboo(arr: [Int]) -> [Int] {
        var result = [Int]()
        var inputArr = arr
        while inputArr.count != 0 {
            result.append(inputArr.count)
            let min = findMin(arr: inputArr)
            let copyInput = inputArr
            inputArr.removeAll()
            for each in copyInput {
                if each != min {
                    let new = each - min
                    inputArr.append(new)
                }
            }
        }
        return result
    }
    
    func findMin(arr: [Int]) -> Int {
        var min = arr[0]
        for each in arr {
            if each <= min {
                min = each
            }
        }
        return min
    }
}
