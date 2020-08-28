//
//  NamesScores.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 1/29/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

class NamesScores {
    var charDict = [Character: Int]()
    func calculateScores() -> Int {
        prepareCharDict()
        let names = readNamesfromFile(fileName: "names.txt").sorted()
        var sum = 0
        var nth = 1
        for eachName in names {
            let value = calculateWeightOf(name: eachName)
            sum += value * nth
            print("Name = \(eachName), \(nth), \(value * nth)")
            nth += 1
        }
        return sum
    }
    
    func readNamesfromFile(fileName: String) -> Array<Substring> {
        guard let path = Bundle.main.path(forResource: "names", ofType: "txt") else {
            return []
        }
       
        let fileUrl = URL(fileURLWithPath: path)
        guard let valuesWithComma = try? String(contentsOf: fileUrl, encoding: .utf8) else {
            return []
        }
        let names = valuesWithComma.split(separator: ",")
        return names
    }
    
    func calculateWeightOf(name: Substring) -> Int {
        var sum = 0
        for eachChar in name {
            let subchar = Character(eachChar.lowercased())
            if let value = charDict[subchar] {
                sum += value
            }
        }
        return sum
    }
    
    func prepareCharDict() {
        var index = 1
        for eachChar in "abcdefghijklmnopqrstuvwxyz" {
            print("\(eachChar), \(index)")
            charDict[eachChar] = index
            index += 1
        }
    }
    
}
