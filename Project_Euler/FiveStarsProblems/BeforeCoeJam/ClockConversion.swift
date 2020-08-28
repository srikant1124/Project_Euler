//
//  ClockConversion.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 2/13/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation
struct ClockConversion {
    func convert(timeString: String) -> String {
        let timeArr = timeString.split(separator: ":")
        var hour: Int! = Int(timeArr[0])
        let type = timeArr[2].suffix(2)
        let sec = timeArr[2].prefix(2)
        var result = ""
        var hourString = ""
        if type == "PM" {
            if hour != 12 {
                hour += 12
                if hour == 24 {
                    hour = 00
                }
            }
        } else {
            if hour == 12 {
                hour = 00
            }
        }
        if hour == 0 {
            hourString = "00"
        } else {
            if type == "AM" {
                hourString = String(timeArr[0])
            } else {
                hourString = "\(hour ?? 0)"
            }
        }
        result = "\(hourString):\(timeArr[1]):\(sec)"
        return result
    }
}
