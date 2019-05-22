//
//  DivisibleTrangularNumberTests.swift
//  Project_EulerTests
//
//  Created by Kumar jena, Srikant - Srikant on 4/28/19.
//  Copyright © 2019 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import Project_Euler

class DivisibleTrangularNumberTests: XCTestCase {
    var model: DivisibleTrangularNumber!
    override func setUp() {
        super.setUp()
        model = DivisibleTrangularNumber()
    }
    
    override func tearDown() {
        super.tearDown()
        model = nil
    }
    
    func testFor10TriangularNumbers() {
        let triangularNos = model.findTriangularNumbers(for: 10)
        XCTAssertEqual(triangularNos, [1,3,6,10,15,21,28,36,45,55])
    }
    
    func testFor500TriangularNumbers() {
        let triangularNos = model.findTriangularNumbers(for: 500)
        XCTAssertEqual(triangularNos, [1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 66, 78, 91, 105, 120, 136, 153, 171, 190, 210, 231, 253, 276, 300, 325, 351, 378, 406, 435, 465, 496, 528, 561, 595, 630, 666, 703, 741, 780, 820, 861, 903, 946, 990, 1035, 1081, 1128, 1176, 1225, 1275, 1326, 1378, 1431, 1485, 1540, 1596, 1653, 1711, 1770, 1830, 1891, 1953, 2016, 2080, 2145, 2211, 2278, 2346, 2415, 2485, 2556, 2628, 2701, 2775, 2850, 2926, 3003, 3081, 3160, 3240, 3321, 3403, 3486, 3570, 3655, 3741, 3828, 3916, 4005, 4095, 4186, 4278, 4371, 4465, 4560, 4656, 4753, 4851, 4950, 5050, 5151, 5253, 5356, 5460, 5565, 5671, 5778, 5886, 5995, 6105, 6216, 6328, 6441, 6555, 6670, 6786, 6903, 7021, 7140, 7260, 7381, 7503, 7626, 7750, 7875, 8001, 8128, 8256, 8385, 8515, 8646, 8778, 8911, 9045, 9180, 9316, 9453, 9591, 9730, 9870, 10011, 10153, 10296, 10440, 10585, 10731, 10878, 11026, 11175, 11325, 11476, 11628, 11781, 11935, 12090, 12246, 12403, 12561, 12720, 12880, 13041, 13203, 13366, 13530, 13695, 13861, 14028, 14196, 14365, 14535, 14706, 14878, 15051, 15225, 15400, 15576, 15753, 15931, 16110, 16290, 16471, 16653, 16836, 17020, 17205, 17391, 17578, 17766, 17955, 18145, 18336, 18528, 18721, 18915, 19110, 19306, 19503, 19701, 19900, 20100, 20301, 20503, 20706, 20910, 21115, 21321, 21528, 21736, 21945, 22155, 22366, 22578, 22791, 23005, 23220, 23436, 23653, 23871, 24090, 24310, 24531, 24753, 24976, 25200, 25425, 25651, 25878, 26106, 26335, 26565, 26796, 27028, 27261, 27495, 27730, 27966, 28203, 28441, 28680, 28920, 29161, 29403, 29646, 29890, 30135, 30381, 30628, 30876, 31125, 31375, 31626, 31878, 32131, 32385, 32640, 32896, 33153, 33411, 33670, 33930, 34191, 34453, 34716, 34980, 35245, 35511, 35778, 36046, 36315, 36585, 36856, 37128, 37401, 37675, 37950, 38226, 38503, 38781, 39060, 39340, 39621, 39903, 40186, 40470, 40755, 41041, 41328, 41616, 41905, 42195, 42486, 42778, 43071, 43365, 43660, 43956, 44253, 44551, 44850, 45150, 45451, 45753, 46056, 46360, 46665, 46971, 47278, 47586, 47895, 48205, 48516, 48828, 49141, 49455, 49770, 50086, 50403, 50721, 51040, 51360, 51681, 52003, 52326, 52650, 52975, 53301, 53628, 53956, 54285, 54615, 54946, 55278, 55611, 55945, 56280, 56616, 56953, 57291, 57630, 57970, 58311, 58653, 58996, 59340, 59685, 60031, 60378, 60726, 61075, 61425, 61776, 62128, 62481, 62835, 63190, 63546, 63903, 64261, 64620, 64980, 65341, 65703, 66066, 66430, 66795, 67161, 67528, 67896, 68265, 68635, 69006, 69378, 69751, 70125, 70500, 70876, 71253, 71631, 72010, 72390, 72771, 73153, 73536, 73920, 74305, 74691, 75078, 75466, 75855, 76245, 76636, 77028, 77421, 77815, 78210, 78606, 79003, 79401, 79800, 80200, 80601, 81003, 81406, 81810, 82215, 82621, 83028, 83436, 83845, 84255, 84666, 85078, 85491, 85905, 86320, 86736, 87153, 87571, 87990, 88410, 88831, 89253, 89676, 90100, 90525, 90951, 91378, 91806, 92235, 92665, 93096, 93528, 93961, 94395, 94830, 95266, 95703, 96141, 96580, 97020, 97461, 97903, 98346, 98790, 99235, 99681, 100128, 100576, 101025, 101475, 101926, 102378, 102831, 103285, 103740, 104196, 104653, 105111, 105570, 106030, 106491, 106953, 107416, 107880, 108345, 108811, 109278, 109746, 110215, 110685, 111156, 111628, 112101, 112575, 113050, 113526, 114003, 114481, 114960, 115440, 115921, 116403, 116886, 117370, 117855, 118341, 118828, 119316, 119805, 120295, 120786, 121278, 121771, 122265, 122760, 123256, 123753, 124251, 124750, 125250])
    }
    
    func testfindDivisorsOfAEvenTriangualrNo() {
        model.timeComplexity.startTime()
        let divisors = model.findDivisorsOfTriangularNos(with: 28)
        model.timeComplexity.endTime(forMethod: "findDivisorsOfATriangualrNo")
        XCTAssertEqual(divisors.sorted(), [1,2,4,7,14,28])
    }
    
    func testfindDivisorsOfAOddTriangualrNo() {
        model.timeComplexity.startTime()
        let divisors = model.findDivisorsOfTriangularNos(with: 55)
        model.timeComplexity.endTime(forMethod: "findDivisorsOfATriangualrNo")
        XCTAssertEqual(divisors.sorted(), [1, 5, 11, 55])
    }
    
    func testfindDivisorsOfATriangualrNo() {
        model.timeComplexity.startTime()
        let divisors1 = model.findDivisorsOfTriangularNos(with: 76576500)
        model.timeComplexity.endTime(forMethod: "optimizeFindDivisors")
        XCTAssertEqual(divisors1.sorted().count, 576)
    }
    
    func testfindTriangularNumberHavingMaxDivisors() {
        model.timeComplexity.startTime()
        let triangularNo = model.find1stTriangularNumberHavingMoreThan(divisors: 6)
        model.timeComplexity.endTime(forMethod: "optimizeFindDivisors")
        XCTAssertEqual(triangularNo, 28)
        
        model.timeComplexity.startTime()
        let triangularNo2 = model.find1stTriangularNumberHavingMoreThan(divisors: 7)
        model.timeComplexity.endTime(forMethod: "optimizeFindDivisors")
        XCTAssertEqual(triangularNo2, 36)
        
        model.timeComplexity.startTime()
        let triangularNo3 = model.find1stTriangularNumberHavingMoreThan(divisors: 8)
        model.timeComplexity.endTime(forMethod: "optimizeFindDivisors")
        XCTAssertEqual(triangularNo3, 36)

        model.timeComplexity.startTime()
        let triangularNo4 = model.find1stTriangularNumberHavingMoreThan(divisors: 9)
        model.timeComplexity.endTime(forMethod: "optimizeFindDivisors")
        XCTAssertEqual(triangularNo4, 36)
        
        model.timeComplexity.startTime()
        let triangularNo5 = model.find1stTriangularNumberHavingMoreThan(divisors: 15)
        model.timeComplexity.endTime(forMethod: "optimizeFindDivisors")
        XCTAssertEqual(triangularNo5, 120)
        
        model.timeComplexity.startTime()
        let triangularNo6 = model.find1stTriangularNumberHavingMoreThan(divisors: 30)
        model.timeComplexity.endTime(forMethod: "optimizeFindDivisors")
        XCTAssertEqual(triangularNo6, 2016)
    }
    
    func testFind1stTriangularNumberHavingMoreThan500Divisors() {
        model.timeComplexity.startTime()
        let triangularNo7 = model.find1stTriangularNumberHavingMoreThan(divisors: 500)
        model.timeComplexity.endTime(forMethod: "testFind1stTriangularNumberHavingMoreThan500Divisors")
        XCTAssertEqual(triangularNo7, 76576500)
    }
    
    func testFindTotalCountOfDivisorsOfNumber() {
        model.timeComplexity.startTime()
        let divisors = model.findTotalDivisorsCountsOf(number: 36)
        model.timeComplexity.endTime(forMethod: "testFindTotalCountOfDivisorsOfNumber")
        XCTAssertEqual(divisors, 9)
    }
    
    func testFindTotalCountOfDivisorsOfNumberCase2() {
        model.timeComplexity.startTime()
        let divisors = model.findTotalDivisorsCountsOf(number: 28)
        model.timeComplexity.endTime(forMethod: "testFindTotalCountOfDivisorsOfNumberCase2")
        XCTAssertEqual(divisors, 6)
    }
    
    func testFindTotalCountOfDivisorsOfNumberCase3() {
        model.timeComplexity.startTime()
        let divisors = model.findTotalDivisorsCountsOf(number: 55)
        model.timeComplexity.endTime(forMethod: "testFindTotalCountOfDivisorsOfNumberCase3")
        XCTAssertEqual(divisors, 4)
    }
    
    func testFindTotalCountOfDivisorsOfNumberCase4() {
        model.timeComplexity.startTime()
        let divisors = model.findTotalDivisorsCountsOf(number: 3)
        model.timeComplexity.endTime(forMethod: "testFindTotalCountOfDivisorsOfNumberCase4")
        XCTAssertEqual(divisors, 2)
    }
    
    func testFindTotalCountOfDivisorsOfNumberCase5() {
        model.timeComplexity.startTime()
        let divisors = model.findTotalDivisorsCountsOf(number: 1)
        model.timeComplexity.endTime(forMethod: "testFindTotalCountOfDivisorsOfNumberCase5")
        XCTAssertEqual(divisors, 1)
    }
    
    func testFindTotalCountOfDivisorsOfNumberCase6() {
        model.timeComplexity.startTime()
        let divisors = model.findTotalDivisorsCountsOf(number: 100)
        model.timeComplexity.endTime(forMethod: "testFindTotalCountOfDivisorsOfNumberCase6")
        XCTAssertEqual(divisors, 9)
    }
}

