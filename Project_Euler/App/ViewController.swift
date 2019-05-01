//
//  ViewController.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 4/14/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let problem = DataModel(input: 1000)
        //let sum = problem.findSummationOfMultiple(with: 3, inputTwo: 5)
        //print(sum)
        countingProblem()
    }
    
    func countingProblem() {
        let studentsMark = [55, 42, 77, 63, 29, 57, 89]
        var count = 0
        for mark in studentsMark {
            if mark >= 50 {
                count += 1
            }
        }
        print(count)
    }
}
