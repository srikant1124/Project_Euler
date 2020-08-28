//
//  CharacterAtK.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 7/7/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Question {
    var L: Int
    var R: Int
    var K: Int
}

struct CharacterAtK {
    
    func charAtKthPosition(arr: [String], qs: [Question] ) {
        for question in qs {
            var concatenate = ""
            for index in (question.L - 1)...(question.R - 1) {
                concatenate += arr[index]
            }
            
            for index in 0..<concatenate.count {
                if (question.K - 1) == index {
                    let exactIndex = concatenate.index(concatenate.startIndex, offsetBy: index)
                    print("\(concatenate) -> \(concatenate[exactIndex])")
                    break
                }
            }
        }
    }
}
