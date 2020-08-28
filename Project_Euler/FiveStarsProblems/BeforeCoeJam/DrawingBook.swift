//
//  DrawingBook.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/18/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct DrawingBook {
    
    func pageCount(n: Int, p: Int) -> Int {
        var newN: Double = Double(n)
        if n % 2 != 0 {
            newN = Double(n - 1)
        }
        var newP: Double = Double(p)
        if p % 2 != 0 {
            newP = Double(p - 1)
        }
        var totalTurns = 0
        if (newN / 2) > newP {
            let result: Double = Double((newP - 1) / 2)
            totalTurns = Int(ceil(result))
        } else {
            totalTurns = Int((newN - newP) / 2)
        }
        return totalTurns
    }
}
