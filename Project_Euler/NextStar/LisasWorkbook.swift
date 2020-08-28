//
//  LisasWorkbook.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/14/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct LisasWorkbook {
    
    func workbook(n: Int, k: Int, arr: [Int]) -> Int {
        
        var pageCount = 1
        var specialProblmesCount = 0
        for index in 0..<arr.count {
            let chapWiseProblems = arr[index]
            specialProblmesCount += getCountOfSepecialProblemChapterWise(totalProblems: chapWiseProblems,
                                                                         maxProblemInPage: k,
                                                                         pageStartNo: pageCount)
            if chapWiseProblems > k {
                var pages = chapWiseProblems % k == 0 ? 0 : 1
                pages += chapWiseProblems / k
                pageCount += pages
            } else {
                pageCount += 1
            }
        }
        return specialProblmesCount
    }
    
    func getCountOfSepecialProblemChapterWise(totalProblems: Int,
                                              maxProblemInPage: Int,
                                              pageStartNo: Int) -> Int {
        var counts = 0
        var page = pageStartNo
        if page > totalProblems {
            return 0
        }
        var problemCounter = 0
        for index in 1...totalProblems {
            problemCounter += 1
            if page == index {
                counts += 1
            }
            if problemCounter == maxProblemInPage {
                page += 1
                problemCounter = 0
            }
        }
        return counts
    }
}
