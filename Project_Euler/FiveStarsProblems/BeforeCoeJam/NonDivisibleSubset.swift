//
//  NonDivisibleSubset.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/28/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

/*
 
 Think of it this way:

 The first part of this algorithm is to determine the remainders of each of the input set when divided by k. This will tell you what numbers in S are/aren't evenly divisible by k (i.e. n % k == 0 or n % k > 0). By using an array whose index == the remainder, it makes the code simpler. I.e. if n(0) == 4 and k == 3, then remainder[1] (which is a count of how many numbers in the input set have a remainder of 1 when divided by k) would equal 1 after analyzing n(0) (because 4 % 3 == 1).

 Why is this important? Well, because for any two numbers that are NOT divisible by k (i.e. n % k > 0), if their remainders DO add up to k, then both of those numbers cannot be in the resulting subset together.

 So the trick here is just to categorize and count each case. In the case that there are numbers evenly divisible by k (again, n % k == 0), only 1 such number can be in the resulting subset, because if you take 2 numbers evenly divisible by k, their sum will also be divisible by k, but that number summed with any other number will satisfy the requirement of the problem (sum not divisible by k). This is the reason for the min() line in the code (i.e. it is saying at most 1 of these evenly divisible numbers can be in the subset).

 The second bit of counting is because the problem is asking for the max number of items (numbers whose sums are not evenly divisible by k) in the subset. So in the case that any n is not divisible by k (again, n % k > 0), we figure out which remainder (by "which remainder" I mean the two remainders whose sums add up to k, since we know both numbers cannot be in the resulting subset because summing them would not satisfy the "sums not evenly divisible by k" condition) has the higher count of numbers we can put in the subset. So we take the max count of remainders[i] vs. remainders[k - i].

 The reason the loop only goes to k // 2 + 1 (I don't think it needs to do + 1 if you have a <= in the conditional) is because you're already comparing the two remainder counts in the first half of the loop. I.e. if k == 10, and you compare remainders 2 and 8 (k - 2), you don't need to then compare remainders 8 and 2 (k - 8), because that combination has already been counted via the max() function.

 Here is my C# code, but it should be plainly obvious what it's doing and could easily be adapted to any number of languages (python included):

 static int nonDivisibleSubset(UInt64 k, UInt64[] arr) {
     int[] remainders = new int[k];
     int count = 0;

     // Count the # of numbers that have each remainder
     for (UInt64 i = 0; i < Convert.ToUInt64(arr.Length); i++) {
         remainders[arr[i] % k]++;
     }

     // Get our counts of each category
     for (UInt64 j = 1; j <= (k / 2); j++) {
         // if the remainders are the same (i.e. k / 2),
         // there can be only 1
         if (j == k - j) {
             count++;
             continue;
         }

         // Otherwise, add the remainder with the
         // highest count
         count += Math.Max(remainders[j], remainders[k - j]);
     }

     // If we had one or more evenly divisible numbers,
     // there can be only 1
     if (remainders[0] > 0)
         count++;

     return count;
 }
 */

struct NonDivisibleSubset {
    
    func nonDivisibleSubset(k: Int, s: [Int]) -> Int {
        let set = Set(s)
        var map = [Int: Int]()
        map[0] = 0
        for item in set {
            let key = item % k
            if map[key] == nil {
                map[key] = 1
            } else {
                map[key] = map[key]! + 1
            }
        }
        
        var max = 0
        if k >= 2 {
            for index in 1...(k/2) {
                if index == k - index {
                    max += 1
                    continue
                }
                max += findMax(map: map, indexOne: index, indexTwo: k - index)
            }
        }
        if map[0]! > 0 {
            max += 1
        }
        return max
    }
    
    func findMax(map: [Int: Int], indexOne: Int, indexTwo: Int) -> Int {
        var oneValue = 0
        var secondValue = 0
        if let value = map[indexOne] {
            oneValue = value
        }
        if let value = map[indexTwo] {
            secondValue = value
        }
        let value = oneValue > secondValue ? oneValue : secondValue
        return value
    }
}
