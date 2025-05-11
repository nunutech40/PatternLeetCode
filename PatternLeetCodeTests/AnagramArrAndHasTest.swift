//
//  AnagramArrAndHasTest.swift
//  PatternLeetCodeTests
//
//  Created by Nunu Nugraha on 11/05/25.
//

import XCTest
@testable import PatternLeetCode

class AnagramArrAndHasTest: XCTestCase {
    
    // Test Case: Input: "Hello", "Holle", output: true
    func testAnagramArrAndHashNormal1() {
        let inputS = "Hello"
        let inputT = "Holle"
        let expectedOutpu: Bool = true
        let result = isAnnagram(inputS, inputT)
        XCTAssertEqual(result, expectedOutpu)
    }
    
    // Test Case: Input: "annagram", "gramanna", output: true
    func testAnagramArrAndHasNormal2() {
        let inputS = "annagram"
        let inputT = "gramanna"
        let expectedOutpu: Bool = true
        let result = isAnnagram(inputS, inputT)
        XCTAssertEqual(result, expectedOutpu)
    }
    
    // Test Case: Input: "nunu", output: "unun"
    func testAnagramArrAndHasNormal3() {
        let inputS = "nunu"
        let inputT = "unun"
        let expectedOutpu: Bool = true
        let result = isAnnagram(inputS, inputT)
        XCTAssertEqual(result, expectedOutpu)
    }
    
    // Test Case: input: "programming", "programing", output: false
    func testAnagramArrAndHasDifferentString() {
        let inputS = "programming"
        let inputT = "programing"
        let expectedOutput: Bool = false
        let result = isAnnagram(inputS, inputT)
        XCTAssertEqual(result, expectedOutput)
    }
    
    
    // Test Case: Input: "naik daun", "daun naik", output: true
    func testAnagramArrAndHasWithSpasi() {
        let inputS = "naik daun"
        let inputT = "daun naik"
        let expectedOutput: Bool = true
        let result = isAnnagram(inputS, inputT)
        XCTAssertEqual(result, expectedOutput)
    }
    
    // Test Case: Input: "Hello", "hello", output: false
    func testAnagramArrAndHashNotSameChar() {
        let inputS = "Hello"
        let inputT = "hello"
        let expectedOutpu: Bool = false
        let result = isAnnagram(inputS, inputT)
        XCTAssertEqual(result, expectedOutpu)
    }
    
    func testAnagramSameCharDifferentCount() {
        let inputS = "aabb"
        let inputT = "ab"
        let expectedOutput = false
        let result = isAnnagram(inputS, inputT)
        XCTAssertEqual(result, expectedOutput)
    }
    
    
    func testAnagramEmptyStrings() {
        let inputS = ""
        let inputT = ""
        let expectedOutput = false
        let result = isAnnagram(inputS, inputT)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func testAnagramWithSymbols() {
        let inputS = "a b-c"
        let inputT = "c-b a"
        let expectedOutput = true
        let result = isAnnagram(inputS, inputT)
        XCTAssertEqual(result, expectedOutput)
    }
}

