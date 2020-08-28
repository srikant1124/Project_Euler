//
//  Grade.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 2/14/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Grade {
    func roundupGrades(grades: [Int]) -> [Int] {
        var result = [Int]()
        for each in grades {
            result.append(roundUpGrade(grade: each))
        }
        return result
    }
    
    func roundUpGrade(grade: Int) -> Int {
        let newValue = grade
        if grade >= 38 && grade <= 100 {
            for each in 1...2 {
                let sum = newValue + each
                if sum % 5 == 0 {
                    return sum
                }
            }
        }
        return grade
    }
}
