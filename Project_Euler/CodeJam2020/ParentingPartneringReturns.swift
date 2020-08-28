//
//  ParentingPartneringReturns.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/4/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ParentingPartneringReturns {
    
    func solve(cases: Int, range: [[Int]]) -> String {
        var outPut = ""
        var cArr = [(start:Int, end: Int)]()
        var jArr = [(start:Int, end: Int)]()
        var list = [Int]()
        var map = [Int :Int]()
        for item in range {
            list.append(item[0])
            map[item[0]] = item[1]
        }
        let sortedStartTime = list.sorted()
        
        for item in sortedStartTime {
            let duration = (start: item, end :map[item]!)
            var overlapC = false
            var overlapJ = false
            for cAct in cArr {
                //arr[i - 1].end > arr[i].start
                if cAct.end > duration.start {
                    //Not Over lapping and For all other case it will over lap
                    overlapC = true
                } else {
                    overlapC = false
                }
            }
            for jAct in jArr {
                if jAct.end > duration.start {
                    overlapJ = true
                } else {
                    overlapJ = false
                }
            }
            if overlapC && overlapJ {
                outPut = "IMPOSSIBLE"
                break
            } else if !overlapC {
                cArr.append(duration)
                outPut.append("C")
            } else if !overlapJ {
                jArr.append(duration)
                outPut.append("J")
            }
        }
        
        print("Case #\(cases): \(outPut)", separator: " ", terminator: "\n")
        return outPut
    }
    
    func bad2_solve(cases: Int, range: [[Int]]) -> String {
        var outPut = ""
        var cArr = [(start:Int, end: Int)]()
        var jArr = [(start:Int, end: Int)]()
        for item in range {
            let duration = (start: item[0], end :item[1])
            if duration.start > duration.end {
                 outPut = "IMPOSSIBLE"
                break
            }
            var overlapC = false
            var overlapJ = false
            for cAct in cArr {
                if duration.end <= cAct.start || duration.start >= cAct.end {
                    //Not Over lapping and For all other case it will over lap
                    overlapC = false
                    break
                } else {
                    overlapC = true
                }
            }
            for jAct in jArr {
                if duration.end <= jAct.start || duration.start >= jAct.end {
                    overlapJ = false
                    break
                } else {
                    overlapJ = true
                }
            }
            if overlapC && overlapJ {
                outPut = "IMPOSSIBLE"
                break
            } else if !overlapC {
                cArr.append(duration)
                outPut.append("C")
            } else if !overlapJ {
                jArr.append(duration)
                outPut.append("J")
            }
        }
        
        print("Case #\(cases): \(outPut)", separator: " ", terminator: "\n")
        return outPut
    }
    
    func bad_solve(cases: Int, range: [Int]) -> String {
        var outPut = ""
        var index = 0
        var cArr = [(start:Int, end: Int)]()
        var jArr = [(start:Int, end: Int)]()
        for _ in 0..<range.count / 2 {
            let duration = (start: range[index], end :range[index + 1])
            if duration.start == duration.end {
                continue
            } else if duration.start > duration.end {
                outPut = "IMPOSSIBLE"
                break
            }
            var overlapC = false
            var overlapJ = false
            for cAct in cArr {
                if cAct.start < duration.start && duration.start < cAct.end ||
                    cAct.start < duration.end && duration.end < cAct.end ||
                    cAct.start == duration.start && duration.end == cAct.end {
                    overlapC = true
                    break
                }
            }
            for jAct in jArr {
                if jAct.start < duration.start && duration.start < jAct.end ||
                    jAct.start < duration.end && duration.end < jAct.end ||
                    jAct.start == duration.start && duration.end == jAct.end {
                    overlapJ = true
                    break
                }
            }
            if overlapC && overlapJ {
                outPut = "IMPOSSIBLE"
                break
            } else if overlapJ {
                cArr.append(duration)
                outPut.append("C")
            } else if overlapC {
                jArr.append(duration)
                outPut.append("J")
            } else {
                cArr.append(duration)
                outPut.append("C")
            }
            index += 2
        }
        
        print("Case #\(cases): \(outPut)", separator: " ", terminator: "\n")
        return outPut
    }
    
    func verybad_solve(cases: Int, range: [[Int]]) {
        var outPut = ""
        var cArr = Array(repeating: -1, count: (24 * 60) + 2)
        var duration = [Int: Int]()
        var iteration = Set<Int>()
        for item in range {
            cArr[item[0]] = item[0]
            cArr[item[1]] = item[1]
            duration[item[0]] = item[1]
            iteration.insert(item[0])
            iteration.insert(item[1])
        }
       
        var progress = [Int: String]()
        var status = ["C": false, "J": false]
        let sort = iteration.sorted()
        print(sort)
        for item in sort {
            if item != -1 {
                if progress[item] != nil {
                    // remove from Progress dict
                    let value = progress[item]!
                    status[value] = false
                    progress.removeValue(forKey: item)
                    if duration[item] != nil {
                        let person = availablePerson(map: status)
                        outPut.append(person)
                        if !person.isEmpty {
                            progress[duration[item]!] = person
                            status[person] = true
                        } else {
                            outPut = "IMPOSSIBLE"
                            print("Case #\(cases): \(outPut)", separator: " ", terminator: "\n")
                            return
                        }
                    }
                } else if duration[item] != nil {
                    for key in progress.keys {
                        if item < key {
                            // Overlap
                            let person = availablePerson(map: status)
                            outPut.append(person)
                            if !person.isEmpty {
                                progress[duration[item]!] = person
                                status[person] = true
                                break
                            } else {
                                outPut = "IMPOSSIBLE"
                                print("Case #\(cases): \(outPut)", separator: " ", terminator: "\n")
                                return
                            }
                        } else if item > key {
                            //????
                        }
                    }
                }
                if progress.isEmpty && duration[item] != nil {
                    progress[duration[item]!] = "C"
                    status["C"] = true
                    outPut.append("C")
                }
            }
        }
        print("Case #\(cases): \(outPut)", separator: " ", terminator: "\n")
    }
    
    func availablePerson(map: [String: Bool]) -> String {
        for (key, value) in map {
            if value == false {
                return key
            }
        }
        return ""
    }
    
}

/*
guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for qItr in 1...q {
    guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }
    let container: [[Int]] = AnyIterator{ readLine() }.prefix(n).map {
        let containerRow: [Int] = $0.split(separator: " ").map {
            if let containerItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
                return containerItem
            } else { fatalError("Bad input") }
        }

        return containerRow
    }
    guard container.count == n else { fatalError("Bad input") }
    
    solve(cases: qItr, range: container)
}
*/
