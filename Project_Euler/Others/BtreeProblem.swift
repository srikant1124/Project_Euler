//
//  BtreeProblem.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/13/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Jungle {
    
    var animals = [Animal]()
    
    init() {
        let mammal = prepareMammal()
        let bird = prepareBird()
        let reptile = prepareReptile()
        self.animals = [mammal, bird, reptile]
        prepareSearhDataStructure()
    }
    
    func prepareMammal() -> Mammal {
        let blackMammal1 = Black(name: "Panther")
        let blackMammal2 = Black(name: "Bear")
        let whiteMammal1 = Whilte(name: "Dog")
        let whiteMammal2 = Whilte(name: "Horse")
        let yellowMammal1 = Yellow(name: "Tiger")
        let yellowMammal2 = Yellow(name: "Lion")
        return Mammal(blacks: [blackMammal1, blackMammal2],
                      whites: [whiteMammal1, whiteMammal2],
                      yellowss: [yellowMammal1, yellowMammal2],
                      name:  "Mammal")
    }
    
    func prepareBird() -> Bird {
        let blackBird1 = Black(name: "Crow")
        let blackBird2 = Black(name: "Cuckoo")
        let whiteBird1 = Whilte(name: "Pigeon")
        let whiteBird2 = Whilte(name: "Heron")
        let yellowBird1 = Yellow(name: "Hen")
        let yellowBird2 = Yellow(name: "Owl")
        return Bird(blacks: [blackBird1, blackBird2],
                    whites: [whiteBird1, whiteBird2],
                    yellowss: [yellowBird1, yellowBird2],
                    name: "Bird")
    }
    func prepareReptile() -> Reptile {
        let blackReptile1 = Black(name: "Crocodile")
        let blackReptile2 = Black(name: "Tortoise")
        let whiteReptitle1 = Whilte(name: "White Cobra 1")
        let whiteReptitle2 = Whilte(name: "White Cobra 2")
        let yellowReptile1 = Yellow(name: "Lizard")
        let yellowReptile2 = Yellow(name: "Dinosaur")
        return Reptile(name: "Reptile",
                       blacks: [blackReptile1, blackReptile2],
                       whites: [whiteReptitle1, whiteReptitle2],
                       yellowss: [yellowReptile1, yellowReptile2])
    }
    func prepareSearhDataStructure() -> [String: String] {
        var dsHash = [String: String]()
        for animal in animals {
            dsHash[animal.name] = animal.name
            for eachMammal in animal.blacks {
                dsHash[eachMammal.name] = animal.name
            }
            for eachMammal in animal.whites {
                dsHash[eachMammal.name] = animal.name
            }
            for eachMammal in animal.yellowss {
                dsHash[eachMammal.name] = animal.name
            }
        }
        return dsHash
    }
}

protocol Animal {
    var name: String {get set}
    var blacks: [Black] {get set}
    var whites: [Whilte] {get set}
    var yellowss: [Yellow] {get set}

}

struct Mammal: Animal {
    var blacks: [Black]
    var whites: [Whilte]
    var yellowss: [Yellow]
    var name: String
}

struct Bird: Animal {
    var blacks: [Black]
    var whites: [Whilte]
    var yellowss: [Yellow]
    var name: String
}

struct Reptile: Animal {
    var name: String
    var blacks: [Black]
    var whites: [Whilte]
    var yellowss: [Yellow]
}

struct Black {
    var name: String
}

struct Whilte {
    var name: String
}

struct Yellow {
    var name: String
}
