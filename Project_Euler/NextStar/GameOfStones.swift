//
//  GameOfStones.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 5/22/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct GameOfStones {
    func gameOfStones(n: Int) -> String {
        let result = n % 7 == 0 || n % 7 == 1
        let name = result == true ? "Second" : "First"
        return name
    }
}
