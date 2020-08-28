//
//  BonAppétit.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/18/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct BonAppétit {
    
    func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
        var total = 0
        for price in bill {
            total += price
        }
        total = total - bill[k]
        let herPrice = total / 2
        if herPrice == b {
            print("Bon Appetit")
        } else if herPrice < b {
            print(b - herPrice)
        } else {
            print("Bon Appetit")
        }
    }
}
