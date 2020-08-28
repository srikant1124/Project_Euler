//
//  CountingSundays.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/30/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct YearInfo {
    var isLeapYear: Bool
    var year: Int
    var startDayInt: Int
    var endDayInt: Int
}

struct CountingSundays {
    
    let monthDict = [1: 31, 2: 28, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31]
//    let monthDictText = [1: "Jan", 2: "Feb", 3: "Mar", 4: "Apr", 5: "May", 6: "Jun", 7: "July", 8: "Aug", 9: "Sep", 10: "Oct", 11: "Nov", 12: "Dec"]

    var sundayCounts = 0
    
//    let sDict = ["Monday": 1,
//                 "Tuseday": 2,
//                 "Wednesday": 3,
//                 "Thursday": 4,
//                 "Friday": 5,
//                 "Satrday": 6,
//                 "Sunday": 7]
    
//    let iDict = [1: "Monday",
//                 2: "Tuseday",
//                 3: "Wednesday",
//                 4: "Thursday",
//                 5: "Friday",
//                 6: "Satrday",
//                 7: "Sunday"]
    
    mutating func solveProblem() -> Int {
     
        let exampleYear = 1900
        let startYear = 1901
        let endYear = 2000
        
        var yearDict = [Int: YearInfo]()
        let yInfo = YearInfo(isLeapYear: false, year: exampleYear, startDayInt: 1, endDayInt: 1)
        yearDict[exampleYear] = yInfo
        
        for eachYear in startYear...endYear {
            let preYear = yearDict[eachYear - 1]!
            if isLeapYear(year: eachYear) {
                let yearInfo = prepareFirstDayAndLastDay(preYearInfo: preYear, isLeapYear: true)
                yearDict[eachYear] = yearInfo
                getSundayCounts(year: eachYear, isLeapYear: true, yearInfo: yearInfo)
            } else {
                let yearInfo = prepareFirstDayAndLastDay(preYearInfo: preYear, isLeapYear: false)
                yearDict[eachYear] = yearInfo
                getSundayCounts(year: eachYear, isLeapYear: false, yearInfo: yearInfo)
            }
        }
        return sundayCounts
    }
    
    func prepareFirstDayAndLastDay(preYearInfo: YearInfo, isLeapYear: Bool) -> YearInfo {
        let firstDayIndex = getDayIndex(dayIndex: preYearInfo.endDayInt + 1)
        var lastIndex = getDayIndex(dayIndex: firstDayIndex)
        if isLeapYear {
            lastIndex = getDayIndex(dayIndex: firstDayIndex + 1)
        }
        let yearInfo = YearInfo(isLeapYear: isLeapYear, year: preYearInfo.year + 1, startDayInt: firstDayIndex, endDayInt: lastIndex)
        return yearInfo
    }
    
    func getDayIndex(dayIndex: Int) -> Int {
        if dayIndex > 7 || dayIndex == 0 {
            return abs(dayIndex - 7)
        }
        return dayIndex
    }

    
    mutating func getSundayCounts(year: Int, isLeapYear: Bool, yearInfo: YearInfo) {
        
        var firstDayIndex = getDayIndex(dayIndex: yearInfo.startDayInt)
        var lastDayIndex = getDayIndex(dayIndex: firstDayIndex + 2)
        printDays(fDay: firstDayIndex, lDay: lastDayIndex, year: year, month: 1)

        for month in 2...12 {
            guard let days = monthDict[month] else {
                continue
            }
            var counts = days
            if isLeapYear && days == 28 {
                counts += 1
            }
            switch counts {
            case 31:
                firstDayIndex = getDayIndex(dayIndex: lastDayIndex + 1)
                lastDayIndex = getDayIndex(dayIndex: firstDayIndex + 2)
            case 30:
                firstDayIndex = getDayIndex(dayIndex: lastDayIndex + 1)
                lastDayIndex = getDayIndex(dayIndex: firstDayIndex + 1)
            case 28:
                firstDayIndex = getDayIndex(dayIndex: lastDayIndex + 1)
                lastDayIndex = getDayIndex(dayIndex: firstDayIndex - 1)
            case 29:
                firstDayIndex = getDayIndex(dayIndex: lastDayIndex + 1)
                lastDayIndex = getDayIndex(dayIndex: firstDayIndex)
            default:
                break
            }
            printDays(fDay: firstDayIndex, lDay: lastDayIndex, year: year, month: month)
        }
    }
    
    mutating func printDays(fDay: Int, lDay: Int, year: Int, month: Int) {
        var extraDay = 0
        if isLeapYear(year: year) && month == 2 {
            extraDay = 1
        }
        if fDay == 7 {
            sundayCounts += 1
//            print("Year - \(year), Month - \(monthDictText[month]!), Days - \(monthDict[month]! + extraDay), [ \(iDict[fDay]!) - \(iDict[lDay]!)]")
        }
        print(sundayCounts)
    }
    
    func isLeapYear(year: Int) -> Bool {
        if year % 4 == 0 {
            if year % 100 != 0 {
                return true
            } else if year % 400 == 0 {
                return true
            }
        }
        return false
    }
}
