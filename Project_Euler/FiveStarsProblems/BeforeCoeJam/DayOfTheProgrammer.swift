//
//  DayOfTheProgrammer.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/17/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct DayOfTheProgrammer {
    
    func dayOfProgrammer(year: Int) -> String {
        var day = 13
        if isLeapYear(year) {
            day = 12
        }
        if year == 1918 {
            day += 13
        }
        return "\(day).9.\(year)"
    }
    
    private func isLeapYear(_ year: Int) -> Bool {
        if year >= 1700 && year <= 1917 {
            return (year % 4 == 0)
        } else {
            if year % 4 == 0 {
                if year % 100 == 0 {
                    if year % 400 == 0 {
                        return true
                    } else {
                        return false
                    }
                } else {
                    return true
                }
            } else {
                return false
            }
        }
    }
}
