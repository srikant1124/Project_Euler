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
        let problem = DataModel(input: 1000)
        let sum = problem.findSummationOfMultiple(with: 3, inputTwo: 5)
        print(sum)
    }
}

