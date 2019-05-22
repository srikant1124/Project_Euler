//
//  Project_EulerTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/14/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class Project_EulerTests: XCTestCase {
    override func setUp() {
        //This method is called before the invocation of EACH test method in the class.
    }
    func testProblem1() {
        let testCase1 = DataModel(input: 10)
        let testSum1 = testCase1.findSummationOfMultiple(with: 3, inputTwo: 5)
        XCTAssertEqual(testSum1, 23)
        let testCase2 = DataModel(input: 1000)
        let testSum2 = testCase2.findSummationOfMultiple(with: 3, inputTwo: 5)
        XCTAssertEqual(testSum2, 233168)
    }
    
    func testGenerateFibonacciSequency() {
        let model = DataModel(input: 0)
        model.timeComplexity.startTime()
       let series = model.generateFibonacciSequence(number: 8)
        model.timeComplexity.endTime(forMethod: "generateFibonacciSequence")
        print(series)
        XCTAssertEqual(series, [0, 1, 1, 2, 3, 5, 8, 13])
        
        model.timeComplexity.startTime()
        let series1 = model.generateFibonacciSequenceOptimized(number: 8)
        model.timeComplexity.endTime(forMethod: "generateFibonacciSequenceEsay")
        print(series1)
        XCTAssertEqual(series1, [0, 1, 1, 2, 3, 5, 8, 13])
    }
    
    func testProblem2() {
        let testCase1 = DataModel(input: 0)
        let testSum1 = testCase1.findSumOfEvenValuedFromFibbonaciSequency(withMaxTerm: 8)
        XCTAssertEqual(testSum1, 2)
        
        let testSum2 = testCase1.findSumOfEvenValuedFromFibbonaciSequency(withMaxTerm: 55)
        XCTAssertEqual(testSum2, 44)
        
        let testSum3 = testCase1.findSumOfEvenValuedFromFibbonaciSequency(withMaxTerm: 89)
        XCTAssertEqual(testSum3, 44)
        
        let testSum4 = testCase1.findSumOfEvenValuedFromFibbonaciSequency(withMaxTerm: 4000000)
        XCTAssertEqual(testSum4, 4613732)
    }
    
    func testIsPrime() {
        let testCase1 = DataModel(input: 0)
        XCTAssertEqual(testCase1.isPrime(value: 2), true)
        XCTAssertEqual(testCase1.isPrime(value: 3), true)
        XCTAssertEqual(testCase1.isPrime(value: 10), false)
        XCTAssertEqual(testCase1.isPrime(value: 17), true)
        XCTAssertEqual(testCase1.isPrime(value: 29), true)
        XCTAssertEqual(testCase1.isPrime(value: 20), false)
        XCTAssertEqual(testCase1.isPrime(value: 21), false)
        XCTAssertEqual(testCase1.isPrime(value: 1), false)
    }
    
    func testPrimeFactorisationOfNum() {
        let testCase1 = DataModel(input: 0)
        let primeCount = testCase1.primeFactorisationOf(number: 2)
        XCTAssertEqual(primeCount.count, 1)
        
        let primeFactors1 = testCase1.primeFactorisationOf(number: 3)
        XCTAssertEqual(primeFactors1.count, 1)
        
        let primeFactors2 = testCase1.primeFactorisationOf(number: 4)
        XCTAssertEqual(primeFactors2.count, 1)
        
        let primeFactors3 = testCase1.primeFactorisationOf(number: 5)
        XCTAssertEqual(primeFactors3.count, 1)
        
        let primeFactors4 = testCase1.primeFactorisationOf(number: 21)
        XCTAssertEqual(primeFactors4.count, 2)
        XCTAssertEqual(primeFactors4.sorted(by: >)[0], 7)
        
        let primeFactors5 = testCase1.primeFactorisationOf(number: 13195)
        XCTAssertEqual(primeFactors5.count, 4)
        XCTAssertEqual(primeFactors5.sorted(by: >)[0], 29)
        
        let primeFactors6 = testCase1.primeFactorisationOf(number: 600851475143)
        XCTAssertEqual(primeFactors6.count, 4)
        XCTAssertEqual(primeFactors6.sorted(by: >)[0], 6857)
        
        let primeFactors7 = testCase1.primeFactorisationOf(number: 228)
        XCTAssertEqual(primeFactors7.count, 3)
        XCTAssertEqual(primeFactors7.sorted(by: >)[0], 19)
        
        let primeFactors8 = testCase1.primeFactorisationOf(number: 189)
        XCTAssertEqual(primeFactors8.count, 2)
        XCTAssertEqual(primeFactors8.sorted(by: >)[0], 7)
        
        let primeFactors9 = testCase1.primeFactorisationOf(number: 300)
        XCTAssertEqual(primeFactors9.count, 3)
        XCTAssertEqual(primeFactors9.sorted(by: >)[0], 5)
    }
    
    func testLargestNDigitsNumber() {
        let testCase1 = DataModel(input: 0)
        let largestNumber = testCase1.largest(nDigitsNum: 1)
        XCTAssertEqual(largestNumber, 9)
        
        let largestNumber2 = testCase1.largest(nDigitsNum: 2)
        XCTAssertEqual(largestNumber2, 99)
        
        let largestNumber3 = testCase1.largest(nDigitsNum: 3)
        XCTAssertEqual(largestNumber3, 999)
    }
    
    func testLargestPalindrum() {
        let testCase1 = DataModel(input: 0)
        let largestNumber = testCase1.findLargestPalindrumNumber(digits: 2)
        XCTAssertEqual(largestNumber, 9009)
        
        let largestNumber2 = testCase1.findLargestPalindrumNumber(digits: 3)
        XCTAssertEqual(largestNumber2, 906609)
    }
    
    func testFindSmallest() {
        let testCase1 = DataModel(input: 0)
        let smallestNumber = testCase1.smallestNumberDivisbleByKnos(kValue: 10)
        XCTAssertEqual(smallestNumber, 2520)
        
        let smallestNumber2 = testCase1.smallestNumberDivisbleByKnos(kValue: 20)
        XCTAssertEqual(smallestNumber2, 232792560)
        
        let smallestNumber3 = testCase1.smallestNumberDivisbleByKnos(kValue: 30)
        XCTAssertEqual(smallestNumber3, 2329089562800)
    }
    
    func testProblem6() {
        let model = DataModel(input: 0)
        let difference = model.problem6(nthTerm: 10)
        XCTAssertEqual(difference, 2640)
        
        let difference2 = model.problem6(nthTerm: 5)
        XCTAssertEqual(difference2, 170)
        
        let difference3 = model.problem6(nthTerm: 100)
        XCTAssertEqual(difference3, 25164150)
    }
    
    let largeNumbersInString = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
    
    func testCountDigits() {
        var model = LargestProductInSeries()
        model.timeComplexity.startTime()
        let counts = model.countDigits(text: largeNumbersInString)
        model.timeComplexity.endTime(forMethod: "countDigits", needToShowTheTimeDifference: false)
        XCTAssertEqual(counts, 1000)
    }
    
    func testGetLargestProduct() {
        var model = LargestProductInSeries()
        model.timeComplexity.startTime()
        let largestNumber = model.getLargestProductOf(nAdjacentNumbers: 4, inSeriesOfNumbers: largeNumbersInString)
        model.timeComplexity.endTime(forMethod: "getLargestProductOf", needToShowTheTimeDifference: false)
        XCTAssertEqual(largestNumber, 5832)
    }
    
    func testGetLargestProductOf13Digits() {
        var model = LargestProductInSeries()
        model.timeComplexity.startTime()
        let largestNumber1 = model.getLargestProductOf(nAdjacentNumbers: 13, inSeriesOfNumbers: largeNumbersInString)
        model.timeComplexity.endTime(forMethod: "getLargestProductOf")
        XCTAssertEqual(largestNumber1, 23514624000)
    }
    
    func testOptimizedWayToGetLargestProductOf13Digits() {
        var model = LargestProductInSeries()
        model.timeComplexity.startTime()
        let largestNumber2 = model.optimizedWayToGetLargestProductOf(nAdjacentNumbers: 13, inSeriesOfNumbers: largeNumbersInString)
        model.timeComplexity.endTime(forMethod: "optimizedWayToGetLargestProductOf")
        XCTAssertEqual(largestNumber2, 23514624000)
    }
    
    func testForloopCountsCheck() {
        var model = LargestProductInSeries()
        model.timeComplexity.startTime()
        let counts = model.timeComplexity.forLooCountsCheck(withLoopCount: 1000)
        model.timeComplexity.endTime(forMethod: "forLooCountsCheck")
        XCTAssertEqual(counts, 1001*1001)
    }
    
    func testgetGreatestProduct() {
        let model = DataModel(input: 0)
        let multValue = model.findTriplatesWhoseSumIsK(wiyhSum: 1000)
        XCTAssertEqual(multValue, 31875000)
    }
    
    func testSumNPrimeNumbers() {
        let model = DataModel(input: 0)
        model.timeComplexity.startTime()
        let sum1 = model.findSumOfPrimeNumbers(valueOfN: 2000000)
        model.timeComplexity.endTime(forMethod: "findSumOfPrimeNumbers")
        XCTAssertEqual(sum1, 142913828922)
        
        model.timeComplexity.startTime()
        let sum2 = model.findSumOfPrimeNumbersNotSieveWay(valueOfN: 2000000)
        model.timeComplexity.endTime(forMethod: "findSumOfPrimeNumbersNotSieveWay")
        XCTAssertEqual(sum2, 142913828922)
    }
    
    func bubbleSort() {
        var model = LargestProductInSeries()
        model.timeComplexity.startTime()
        let _ = model.timeComplexity.bubbleSort([10,9,8,7,6,5,4,3,2,1])
        model.timeComplexity.endTime(forMethod: "bubbleSort")
    }
    
    let string = "08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08 49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00 81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65 52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91 22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80 24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50 32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70 67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21 24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72 21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95 78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92 16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57 86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58 19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40 04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66 88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69 04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36 20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16 20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54 01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48"
    
    func testTopLeftRightDownDiogonal20x20Grid() {
        let arrayOfNumbersInString = string.split(separator: " ")
        XCTAssertEqual(arrayOfNumbersInString.count, 400)
        let model = Grid20x20Problem()
        let matrix20x20 = model.convertStringRowxColumnGrid(string: arrayOfNumbersInString, rows: 20, columns: 20)
        
        model.printTheMatrix(grid: matrix20x20, rows: 20, columns: 20)
        let buttomLeftToTopRightArray = model.topLeftRightDownDiogonal(squareMatrix: matrix20x20, rows: 20, columns: 20)
        print(buttomLeftToTopRightArray)

        let seriesMult = model.getLargestProductFromArrayWith(kDigitsAtATime: 4, arr: buttomLeftToTopRightArray)
        XCTAssertEqual(70600674, seriesMult)
    }
    
    func testMaximumProductOf4DigitsNumberFrom20x20Grid() {
        let arrayOfNumbersInString = string.split(separator: " ")
        XCTAssertEqual(arrayOfNumbersInString.count, 400)
        let model = Grid20x20Problem()
        let matrix20x20 = model.convertStringRowxColumnGrid(string: arrayOfNumbersInString, rows: 20, columns: 20)
        model.printTheMatrix(grid: matrix20x20, rows: 20, columns: 20)
        let maxProduct = model.getMaximumProductOf4DigitsNumbers(matrix: matrix20x20, rows: 20, columns: 20)
        XCTAssertEqual(70600674, maxProduct)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of EACH test method in the class.
    }

}
