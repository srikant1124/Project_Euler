//
//  TaumAndBday.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/3/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct TaumAndBday {
    
    func bad_taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
        if findMax(a: findMax(a: bc, b: wc), b: z) == z || (bc == wc && wc == z) {
            return b * bc + w * wc
        }
        var actualResut = b * bc + w * wc
        if bc > wc && bc > (wc + z) {
            actualResut = (b * wc) + (w * wc) + (b * z)
        } else if wc > bc && wc > (bc + z) {
            actualResut = (b * bc) + (w * bc) + (w * z)
        }
        return actualResut
    }
    
    func findMax(a: Int, b: Int) -> Int {
        return a > b ? a : b
    }
}
