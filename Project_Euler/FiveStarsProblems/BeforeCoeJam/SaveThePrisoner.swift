//
//  SaveThePrisoner.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/22/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct SaveThePrisoner {
    
    func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
        
        let prisnors = n
        let sweets = m
        let startAt = s
        var remainder = 0
        remainder = (sweets + (startAt - 1)) % prisnors
        if remainder == 0 {
            remainder = prisnors
        }
        return remainder
    }
}
