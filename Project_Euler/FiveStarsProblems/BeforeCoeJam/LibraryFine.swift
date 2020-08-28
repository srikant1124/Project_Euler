//
//  LibraryFine.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/28/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct LibraryFine {
    
    func notgood_libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
        var fine = 0
        if y1 > y2 {
            fine = 10000 * (y1 - y2)
        } else if y1 < y2 {
            return fine
        } else {
            if m1 > m2 {
                fine = 500 * (m1 - m2)
            } else if m1 < m2 {
                return fine
            } else {
                if d1 > d2 {
                    fine = 15 * (d1 - d2)
                } else if d1 < d2 {
                    return fine
                }
            }
        }
        return fine
    }
    
    func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
        var fine = 0
        if y1 >= y2 {
            fine = 10000 * (y1 - y2)
            if fine > 0 {
                return fine
            }
            if m1 >= m2 {
                fine = 500 * (m1 - m2)
                if fine > 0 {
                    return fine
                }
                if d1 >= d2 {
                    fine = 15 * (d1 - d2)
                }
            }
        }
        return fine
    }
}
