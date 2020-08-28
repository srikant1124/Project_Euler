//
//  OffLineOnLine.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 6/13/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Employee {
    var name: String
    var isActive: Bool
}

class OffLineOnLine {
    var _employee = [Employee]()
    var finalResult = [Employee]()
    func mergeEmployee(active: [Employee]) {
        var indexI = 0
        var indexJ = 0
        while active.count > indexI {
            let activeEmp = active[indexI]
            var existEmp: Employee?
            if _employee.count > indexJ {
                existEmp = _employee[indexJ]
            }
            if existEmp == nil || activeEmp.name == existEmp?.name {
                finalResult.append(activeEmp)
                indexI += 1
                indexJ += 1
            } else {
                
            }
        }

        
    }
}
