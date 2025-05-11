//
//  FindTwoSumHashTest.swift
//  PatternLeetCodeTests
//
//  Created by Nunu Nugraha on 08/05/25.
//

import XCTest
@testable import PatternLeetCode

class FindTwoSumHashTest: XCTestCase {
    
    // Test Case 1: input: [3, 7, 4, 11, 6, 5, 8], target: 11, output: [1, 2]
    func testFindTwoSumHash() {
        let listInput = [3, 7, 4, 11, 6, 5, 8]
        let target = 11
        let expectedOutput: [Int] = [1, 2]
        
        let result = findTwoSumHash(listInput, target)
        XCTAssertEqual(result, expectedOutput, "findTwoSumHash is valid")
    }
    
    // Test Case 1: input: [3, 7, 4, 11, 6, 5, 8], target: 100, output: []
    func testFindTwoSumNotFoundTarget() {
        let input = [3, 7, 4, 11, 6, 5, 8]
        let target = 100
        let expectedOutput: [Int] = []
        
        let result = findTwoSumHash(input, target)
        XCTAssertEqual(result, expectedOutput, "findTwoSumHash not found is valid")
    }
    
    // Test Case 2: input: [3], target: 11, output: []
    func testFindTwoSumSingleElement() {
        let input = [3]
        let target = 11
        let expectedOutput: [Int] = []
        
        let result = findTwoSumHash(input, target)
        XCTAssertEqual(result, expectedOutput, "findTwoSumHash single element is valid")
    }
    
    // Test Case 3: input: [], target: 11, output: []
    func testFindTwoSumEmptyArray() {
        let input: [Int] = []
        let target = 11
        let expectedOutput: [Int] = []
        
        let result = findTwoSumHash(input, target)
        XCTAssertEqual(result, expectedOutput, "findTwoSumHash empty array is valid")
    }
    
    // Test Case 4: input: [3, -7, 4, -11, 6, -5, 8], target: 11, output: [3, 8]
    func testFindTwoSumNegatifInput() {
        let input = [3, -7, 4, -11, 6, -5, 8]
        let target = 11
        let expectedOutput: [Int] = [0, 6]
        
        let result = findTwoSumHash(input, target)
        XCTAssertEqual(result, expectedOutput, "findTwoSumHash negatif input is valid")
    }
    
    // Test Case 4: input: [3, 7, 4, 11, 6, 5, 8], target: -10, output: [3, 8]
    func testFindTwoSumNegatifTarget() {
        let input = [3, 7, 4, 11, 6, 5, 8]
        let target = -11
        let expectedOutput: [Int] = []
        
        let result = findTwoSumHash(input, target)
        XCTAssertEqual(result, expectedOutput, "findTwoSumHash negatif target is valid")
    }
}
