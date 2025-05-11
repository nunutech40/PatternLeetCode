//
//  ContainDuplicatesArrayAndHashing.swift
//  PatternLeetCodeTests
//
//  Created by Nunu Nugraha on 08/05/25.
//

import XCTest
@testable import PatternLeetCode

class ContainDuplicatesArrayAndHashingTests: XCTestCase {
    
    // Test Case 1: input [1, 4, 1, 6], output: true
    func testContaintDuplicatesInArray() {
        let input = [1, 4, 1, 6]
        let expectedOutput = true
        let result = containDuplicateArrayAndHashing(input)
        XCTAssertEqual(result, expectedOutput, "containDuplicateArrayAndHashing normal true is valid")
    }
    
    // Test Case 2: input [1, 4, 6, 8], output: false
    func testContainDuplicatesInArray2() {
        let input = [1, 4, 6, 8]
        let expectedOutput = false
        let result = containDuplicateArrayAndHashing(input)
        XCTAssertEqual(result, expectedOutput, "containDuplicateArrayAndHashing normal false is valid")
    }
    
    // Test Case 3: input [4], output: false
    func testContainDuplicatesSingleItemInArray() {
        let input = [4]
        let expectedOutput = false
        let result = containDuplicateArrayAndHashing(input)
        XCTAssertEqual(result, expectedOutput, "containDuplicateArrayAndHashing single item return false is valid")
    }
    
    // Test Case 4: input [], output: false
    func testContainDuplicatesEmptyArray() {
        let input: [Int] = []
        let expectedOutput = false
        let result = containDuplicateArrayAndHashing(input)
        XCTAssertEqual(result, expectedOutput, "containDuplicateArrayAndHashing empty array return false is valid")
    }
    
    // Test Case 5: input [1, 1, 1, 6], output: true
    func testContainDuplicatesDuplicatesMoreThanTwoInArray() {
        let input = [1, 1, 1, 6]
        let expectedOutput = true
        let result = containDuplicateArrayAndHashing(input)
        XCTAssertEqual(result, expectedOutput, "containDuplicateArrayAndHashing with duplicates more than two return true is valid")
    }
    
   
}
