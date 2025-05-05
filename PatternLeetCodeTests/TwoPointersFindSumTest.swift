//
//  TwoPointersFindSumTest.swift
//  PatternLeetCodeTests
//
//  Created by Nunu Nugraha on 01/05/25.
//

import XCTest
@testable import PatternLeetCode

class TwoPointersFindSumTest: XCTestCase {
    
    var twoPointerFindSum: TwoPointersFindSum!
    
    override func setUp() {
        super.setUp()
        twoPointerFindSum = TwoPointersFindSum()
    }
    override func tearDown() {
        twoPointerFindSum = nil
        super.tearDown()
    }
    
    // Test Case 1 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target: 13, Output = [1, 6]
    func testFindSumNormal() {
        let input = [1, 4, 5, 5, 6, 8, 9, 11]
        let target = 13
        let expectedOutput = [1, 6]
        let result = twoPointerFindSum.twoSumFindTarget(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum normal return valid result")
    }
    
    // Test Case 2 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target 34, Output = []
    func testFindSumNotFound() {
        let input = [1, 4, 5, 5, 6, 8, 9, 11]
        let target = 34
        let expectedOutput: [Int] = []
        let result = twoPointerFindSum.twoSumFindTarget(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for not found return valid result []")
    }
    
    // Test Case 3 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target 20, Output = [6, 7]
    func testFindSumNormal2() {
        let input = [1, 4, 5, 5, 6, 8, 9, 11]
        let target = 20
        let expectedOutput = [6, 7]
        let result = twoPointerFindSum.twoSumFindTarget(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum normal 2 return valid result")
    }
    
    // Test Case 4 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target -4, Output = []
    func testFindSumNegative() {
        let input = [1, 4, 5, 5, 6, 8, 9, 11]
        let target = -4
        let expectedOutput: [Int] = []
        let result = twoPointerFindSum.twoSumFindTarget(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for negative return valid")
    }
    
    // Test Case 5 => Input = list: [1] and target 13, Output = []
    func testFindSumSingleElement() {
        let input = [1]
        let target = 13
        let expectedOutput: [Int] = []
        let result = twoPointerFindSum.twoSumFindTarget(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for single element return valid")
    }
    
    // Test Case 6 => Input = list: [] and target 4, Output = []
    func testFindSumEmptyArray() {
        let input: [Int] = []
        let target = 4
        let expectedOutput: [Int] = []
        let result = twoPointerFindSum.twoSumFindTarget(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for empty array return valid")
    }
    
    
    // Test Case 7 => Input = list: [5, 5, 6] and target 10, Output = [0, 1]
    func testFindSumDuplicateElement() {
        let input = [5, 5, 6]
        let target = 10
        let expectedOutput: [Int] = [0, 1]
        let result = twoPointerFindSum.twoSumFindTarget(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for duplicate element return valid")
    }
    
    
    
    // Test Case 1 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target: 13, Output = [1, 6]
    func testFindSumNormal_For() {
        let input = [1, 4, 5, 5, 6, 8, 9, 11]
        let target = 13
        let expectedOutput = [1, 6]
        let result = twoPointerFindSum.twoPointersFindSumFor(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum normal return valid result")
    }
    
    // Test Case 2 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target 34, Output = []
    func testFindSumNotFound_For() {
        let input = [1, 4, 5, 5, 6, 8, 9, 11]
        let target = 34
        let expectedOutput: [Int] = []
        let result = twoPointerFindSum.twoPointersFindSumFor(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for not found return valid result []")
    }
    
    // Test Case 3 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target 20, Output = [6, 7]
    func testFindSumNormal2_For() {
        let input = [1, 4, 5, 5, 6, 8, 9, 11]
        let target = 20
        let expectedOutput = [6, 7]
        let result = twoPointerFindSum.twoPointersFindSumFor(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum normal 2 return valid result")
    }
    
    // Test Case 4 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target -4, Output = []
    func testFindSumNegative_For() {
        let input = [1, 4, 5, 5, 6, 8, 9, 11]
        let target = -4
        let expectedOutput: [Int] = []
        let result = twoPointerFindSum.twoPointersFindSumFor(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for negative return valid")
    }
    
    // Test Case 5 => Input = list: [1] and target 13, Output = []
    func testFindSumSingleElement_For() {
        let input = [1]
        let target = 13
        let expectedOutput: [Int] = []
        let result = twoPointerFindSum.twoPointersFindSumFor(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for single element return valid")
    }
    
    // Test Case 6 => Input = list: [] and target 4, Output = []
    func testFindSumEmptyArray_For() {
        let input: [Int] = []
        let target = 4
        let expectedOutput: [Int] = []
        let result = twoPointerFindSum.twoPointersFindSumFor(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for empty array return valid")
    }
    
    
    // Test Case 7 => Input = list: [5, 5, 6] and target 10, Output = [0, 1]
    func testFindSumDuplicateElement_For() {
        let input = [5, 5, 6]
        let target = 10
        let expectedOutput: [Int] = [0, 1]
        let result = twoPointerFindSum.twoPointersFindSumFor(input, target)
        XCTAssertEqual(result, expectedOutput, "test find sum for duplicate element return valid")
    }
}
