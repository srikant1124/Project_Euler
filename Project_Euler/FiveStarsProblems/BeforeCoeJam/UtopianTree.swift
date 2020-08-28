//
//  UtopianTree.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/21/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct UtopianTree {
    
    func utopianTree(n: Int) -> Int {
       var no = n
        var counter = 1
        var growth = 1
        while no != 0 {
            switch counter {
            case 1:
                growth += growth
            case 2:
                growth += 1
            case 3:
                growth += growth
            case 4:
                growth += 1
            default:
                growth += growth
                counter = 1
            }
            no -= 1
            counter += 1
        }
        return growth
    }
}
