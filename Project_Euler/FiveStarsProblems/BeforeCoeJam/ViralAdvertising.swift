//
//  ViralAdvertising.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/22/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ViralAdvertising {

    func viralAdvertising(n: Int) -> Int {
        var share = 5
        var like = 0
        var totalLike = 0
        for _ in 1...n {
            like = Int(floor(Double(share/2)))
            totalLike += like
            print("share = \(share)  like = \(like) totalLike = \(totalLike)")
            share = like * 3
        }
        return totalLike
    }
}
