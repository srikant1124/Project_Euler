//
//  TwoWayMerge.swift
//  Project_Euler
//
//  Created by Kumar jena, Srikant - Srikant on 6/3/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct TwoWayMerge {
    
    /// Optimized logic   - Start
    
    static func merge(arrA: [Int], arrB: [Int], output: inout [Int]) {
        if arrA[arrA.count - 1] <= arrB[arrB.count - 1] {
            mergeCopy(arr1st: arrA, arr2nd: arrB, arrC: &output)
        } else {
            mergeCopy(arr1st: arrB, arr2nd: arrA, arrC: &output)
        }
    }
    
    static func mergeCopy(arr1st: [Int], arr2nd: [Int], arrC: inout [Int]) {
        var sourceIndex = 0
        var kIndex = 0
        if arr1st[arr1st.count - 1] <= arr2nd[0] {
            copy(source: arr1st, dest: &arrC, sIndex: sourceIndex, dIndex: &kIndex)
            copy(source: arr2nd, dest: &arrC, sIndex: sourceIndex, dIndex: &kIndex)
        } else {
            shortMerge(firstArr: arr1st, scndArr: arr2nd, outputArr: &arrC, jIndex: &sourceIndex, kIndex: &kIndex)
            copy(source: arr2nd, dest: &arrC, sIndex: sourceIndex, dIndex: &kIndex)
        }
    }
    
    static func copy(source: [Int], dest: inout [Int], sIndex: Int, dIndex: inout Int) {
        for index in sIndex..<source.count {
            dest[dIndex] = source[index]
            dIndex += 1
        }
    }
    
    static func shortMerge(firstArr: [Int], scndArr: [Int], outputArr: inout [Int], jIndex: inout Int, kIndex: inout Int) {
        var index = 0
        while index <= firstArr.count - 1 {
            if firstArr[index] <= scndArr[jIndex] {
                outputArr[kIndex] = firstArr[index]
                index += 1
            } else {
                outputArr[kIndex] = scndArr[jIndex]
                jIndex += 1
            }
            kIndex += 1
        }
    }
    /// Optimized logic   - End
    
    static func merge(arrA: [Int], arrB: [Int]) -> [Int] {
        var A = arrA
        var B = arrB
        var C = Array(repeating: -1, count: arrA.count + arrB.count)
        if A[A.count - 1] >= B[B.count - 1] {
            B.append(A[A.count - 1])
        } else {
            A.append(B[B.count - 1])
        }
        var index = 0
        var jndex = 0
        for kIndex in 0..<C.count {
            if A[index] < B[jndex] {
                C[kIndex] = A[index]
                index += 1
            } else {
                C[kIndex] = B[jndex]
                jndex += 1
            }
        }
        print(A)
        print(B)
        print(C)
        return C
    }
    
    static func mergeApproach1(arrA: [Int], arrB: [Int]) -> [Int] {
        var A = arrA
        var B = arrB
        var C = Array(repeating: -1, count: arrA.count + arrB.count)
        var iindex = 0
        var jindex = 0
        var kindex = 0
        
        while iindex <= A.count - 1 && jindex <= B.count - 1 {
            if A[iindex] < B[jindex] {
                C[kindex] = A[iindex]
                iindex += 1
            } else {
                C[kindex] = B[jindex]
                jindex += 1
            }
            kindex += 1
        }
        
        for index in iindex..<A.count {
            C[kindex] = A[index]
            kindex += 1
        }
        
        for index in jindex..<B.count {
            C[kindex] = B[index]
            kindex += 1
        }
        
        print(A)
        print(B)
        print(C)
        return C
    }
}
