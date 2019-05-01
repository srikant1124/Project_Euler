//
//  LargestProductInSeries.swift
//  Project_Euler

/*The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
 
73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450

Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?*/

import Foundation

struct LargestProductInSeries {
    var timeComplexity = TimeComplexity()
    
    /// Optimized Way
    /// Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?
    ///
    /// - Parameters:
    ///   - digits: How many digits should take at a  time form larg number for Multiplication
    ///   - string: Series of Numbers in String
    /// - Returns: maximum Productof `n` digits numbers
    mutating func optimizedWayToGetLargestProductOf(nAdjacentNumbers digits: Int, inSeriesOfNumbers string: String) -> Int {
        var mult = 1
        var result = 1
        let charArr1 = [Character](string)
        for index in 0...string.count {
            timeComplexity.firstLoop += 1
            for index1 in 0..<digits {
                timeComplexity.nestedloop += 1
                if charArr1.count > index1 + index {
                    let each = charArr1[index + index1]
                    if let intValue = Int(String(each)) {
                        /// Here is the CATCH
                        /// If we have the ZERO in series then we no need to consider that whole N digits
                        /// Because what evers multiply with zero that becomes zero
                        if intValue == 0 {
                            mult *= 1
                            break
                        }
                        mult *= intValue
                    }
                }
            }
            if result < mult {
                result = mult
            }
            mult = 1
        }
        return result
    }
    
    
    /// Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?
    ///
    /// - Parameters:
    ///   - digits: How many digits should take at a  time form larg number for Multiplication
    ///   - string: Series of Numbers in String
    /// - Returns: maximum Productof `n` digits numbers
    mutating func getLargestProductOf(nAdjacentNumbers digits: Int, inSeriesOfNumbers string: String) -> Int {
        var mult = 1
        var result = 1
        let charArr1 = [Character](string)
        for index in 0...string.count {
            timeComplexity.firstLoop += 1
            for index1 in 0..<digits {
                timeComplexity.nestedloop += 1
                if charArr1.count > index1 + index {
                    let each = charArr1[index + index1]
                    if let intValue = Int(String(each)) {
                        mult *= intValue
                    }
                }
            }
            if result < mult {
                result = mult
            }
            mult = 1
        }
        return result
    }
    
    func countDigits(text: String) -> Int {
        return text.count
    }
}
