//
//  DesignerPDFViewer.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/21/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct DesignerPDFViewer {
    
    func designerPdfViewer(h: [Int], word: String) -> Int {

        var letterDict = [Int: Int]()
        var index = 97
        for height in h {
            letterDict[index] = height
            index += 1
        }
        var max = 0
        for char in word.utf8 {
            if let value = letterDict[Int(char)] {
                if value > max {
                    max = value
                }
            }
        }
        let area = max * word.count
        return area
    }

}
