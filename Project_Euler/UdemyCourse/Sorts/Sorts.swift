//
//  Sorts.swift
//  Udemy_Algo_DS_Masterclass_Colt_Steele
//
//  Created by Kumar jena, Srikant - Srikant on 7/30/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Sorts {
    
    //1. Listen carefully and understand the Problem
    //2. Explore & Discuss the Inputs
            //1. Discuss Types of Input(Int, Double, String ..etc Or GENERIC)
            //2. Discuss Valid and Comples Inputs
            //3. Discuss Empty or Single Input/ Any Cornner cases
            //4. Discuss Nill Input
            //5. Discuss Invalid Inputs
            //6. Discuss a Best case Inputs
            //7. Discuss a Worst Case Inputs
    //3. Discuss Brute Force Approach Using: (Nested Loop & Recusrsion) + Analysis Space and Time Complexity
    //4. Discuss Optimized Approach Using: (Math, Single Loop, Set, Dictionary, Frequency counting, Sliding window) + Analysis Space and Time Complexity
    //5. Walk through the Algorithms and Ask for write in Papper
    //6. Ask for Code (Try to code in GENERIC Approach)
    //7. Test it (All the Discussed Inputs)
    
    func bubbleSort<T: Comparable>(arr: inout [T]) {
        if arr.isEmpty || arr.count == 1 { return }
        var isSwapped = true
        var indexJ = arr.count - 2
        
        while 0 <= indexJ && isSwapped {
            isSwapped = false
            
            for indexI in 0...indexJ {
                if arr[indexI] > arr[indexI + 1] {
                    swapValues(indexOne: indexI, indexTwo: indexI + 1, arr: &arr)
                }
                isSwapped = true
            }
            indexJ -= 1
        }
    }
    
    func swapValues<T>(indexOne: Int, indexTwo: Int, arr: inout [T]) {
        let temp = arr[indexOne]
        arr[indexOne] = arr[indexTwo]
        arr[indexTwo] = temp
    }
    
//========================== Insertion Sort (n ^ 2) ==========================
    
    func insertionSort<T: Comparable>(arr: inout [T]) {
        if arr.count <= 1 { return }
        var indexI = 0
        var temp = arr[indexI + 1]
        
        for indexJ in 1..<arr.count {
            indexI = indexJ - 1
            temp = arr[indexJ]
            
            while indexI > -1 && temp <= arr[indexI] {
                arr[indexI + 1] = arr[indexI]
                indexI -= 1
            }
            indexI += 1
            arr[indexI] = temp
        }
    }
    
//========================== Insertion Sort n log n ==========================
    
    func insertionSort_NlogN<T: Comparable>(arr: inout [T]) {
        if arr.count <= 1 { return }
        
        for indexJ in 1..<arr.count {
            let value = arr[indexJ]
            //let tempArr = Array(arr[0..<indexJ])
            let indexTo = indexToInsert(arr: arr, jIndex: indexJ, targetValue: value)
                //indexToInsert(arr: tempArr, targetValue: value)
            arr.insert(value, at: indexTo)
            arr.remove(at: indexJ + 1)
        }
    }
    
    // can send complete array and index I and J
    func indexToInsert<T: Comparable>(arr: [T],
                                      iIndex: Int = 0,
                                      jIndex: Int,
                                      targetValue: T) -> Int {
        let length = (jIndex - iIndex) + 1
        var leftIndex = iIndex
        var rightIndex = jIndex
        var middleIndex = 0
        while leftIndex <= rightIndex {
            middleIndex = (leftIndex + rightIndex) / 2
            let value = arr[middleIndex]
            if value == targetValue {
                return middleIndex + 1
            } else if value > targetValue {
                rightIndex = middleIndex - 1
            } else {
                leftIndex = middleIndex + 1
            }
        }
        let minIndex = min(rightIndex, leftIndex)
        if minIndex <= -1 {
            return 0
        } else if minIndex >= length {
            return length
        } else if targetValue > arr[middleIndex] {
            return max(rightIndex, leftIndex)
        } else {
            return minIndex
        }
    }
    
    // can send complete array and index I and J
    func indexToInsert<T: Comparable>(arr: [T], targetValue: T) -> Int {
        if arr.isEmpty { return -1 }
        let length = arr.count
        if arr.count == 1 {
            if arr[0] > targetValue {
                return 0
            } else {
                return 1
            }
        }
        var leftIndex = 0
        var rightIndex = length - 1
        var middleIndex = 0
        while leftIndex <= rightIndex {
            middleIndex = (leftIndex + rightIndex) / 2
            let value = arr[middleIndex]
            if value == targetValue {
                return middleIndex + 1
            } else if value > targetValue {
                rightIndex = middleIndex - 1
            } else {
                leftIndex = middleIndex + 1
            }
        }
        let minIndex = min(rightIndex, leftIndex)
        if minIndex <= -1 {
            return 0
        } else if minIndex >= length {
            return length
        } else if targetValue > arr[middleIndex] {
            return max(rightIndex, leftIndex)
        } else {
            return minIndex
        }
    }
    
    //========================== Selection Sort ==========================
    
    func selectionSort<T: Comparable>(arr: inout [T]) {
        if arr.count <= 1 { return }
        for indexI in 0..<arr.count {
            var minIndex = indexI
            for jIndex in (indexI + 1)..<arr.count {
                if arr[jIndex] < arr[minIndex] {
                    minIndex = jIndex
                }
            }
            if arr[indexI] > arr[minIndex] {
                swapValues(indexOne: indexI, indexTwo: minIndex, arr: &arr)
            }
        }
    }
}
