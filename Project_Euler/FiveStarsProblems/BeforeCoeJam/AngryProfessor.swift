//
//  AngryProfessor.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/22/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct AngryProfessor {
    
    func angryProfessor(k: Int, a: [Int]) -> String {
        let yes = "YES"
        let no = "NO"
        var count = 0
        for time in a {
            if time <= 0 {
                count += 1
                print(time)
            }
        }
        if count >= k {
            return no
        }
        return yes
    }
}
