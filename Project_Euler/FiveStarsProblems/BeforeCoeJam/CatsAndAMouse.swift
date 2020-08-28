//
//  CatsAndAMouse.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/18/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct CatsAndAMouse {
    
    func catAndMouse(x: Int, y: Int, z: Int) -> String {
        let catA = "Cat A"
        let catB = "Cat B"
        let mouseC = "Mouse C"
        let a = abs(z - x)
        let b = abs(z - y)
        if a == b {
            return mouseC
        } else if a > b {
            return catB
        }
        return catA
    }
}
