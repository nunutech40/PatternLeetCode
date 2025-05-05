//
//  ReverseArrayTest.swift
//  PatternLeetCodeTests
//
//  Created by Nunu Nugraha on 03/05/25.
//
import XCTest
@testable import PatternLeetCode

class ReverseArrayTest: XCTestCase {
    var reverseArray: ReverseArray!
    
    override func setUp() {
        super.setUp()
        reverseArray = ReverseArray()
    }
    
    override func tearDown() {
        super.tearDown()
        reverseArray = nil
    }
    
    // test reverse string tanpa swap at
    func testReverseStringNormal() { // Tambah prefix "test"
        var input = "Rizka Fajar Nugraha"
        let expectedOutput = "aharguN rajaF akziR" // Perbaiki ekspektasi
        let result = reverseArray.reverseArrayString(&input)
        XCTAssertEqual(result, expectedOutput, "reverse string normal valid")
    }
    
    func testReverseStringPalindrome() {
        var input = "nunu"
        let expectedOutput = "unun"
        let result = reverseArray.reverseArrayString(&input)
        XCTAssertEqual(result, expectedOutput, "reverse string palindrome valid")
    }
    
    func testReverseArraySingleChar() {
        var input = "n"
        let expectedOutput = "n"
        let result = reverseArray.reverseArrayString(&input)
        XCTAssertEqual(result, expectedOutput, "reverse string single valid")
    }
    
    func testReverseArrayEmptyString() {
        var input = ""
        let expectedOutput = ""
        let result = reverseArray.reverseArrayString(&input)
        XCTAssertEqual(result, expectedOutput, "reverse string empty valid")
    }
    
    // test reverse string menggunakan swapAt pada function array
    func testReverseStringNormalSwapAt() { // Tambah prefix "test"
        var input = "Rizka Fajar Nugraha"
        let expectedOutput = "aharguN rajaF akziR" // Perbaiki ekspektasi
        let result = reverseArray.reverseArrayStringSwapAt(&input)
        XCTAssertEqual(result, expectedOutput, "SwapAt reverse string normal valid")
    }
    
    func testReverseStringPalindromeSwapAt() {
        var input = "nunu"
        let expectedOutput = "unun"
        let result = reverseArray.reverseArrayStringSwapAt(&input)
        XCTAssertEqual(result, expectedOutput, "SwapAt reverse string palindrome valid")
    }
    
    func testReverseArraySingleCharSwapAt() {
        var input = "n"
        let expectedOutput = "n"
        let result = reverseArray.reverseArrayStringSwapAt(&input)
        XCTAssertEqual(result, expectedOutput, "SwapAt reverse string single valid")
    }
    
    func testReverseArrayEmptyStringSwapAt() {
        var input = ""
        let expectedOutput = ""
        let result = reverseArray.reverseArrayStringSwapAt(&input)
        XCTAssertEqual(result, expectedOutput, "SwapAt reverse string empty valid")
    }
    
    // test reverse string menggunakan swapAt dan ForLoop pada function array
    func testReverseStringNormalSwapAtForLoop() { // Tambah prefix "test"
        var input = "Rizka Fajar Nugraha"
        let expectedOutput = "aharguN rajaF akziR" // Perbaiki ekspektasi
        let result = reverseArray.reverseArrayStringSwapAtForLoop(&input)
        XCTAssertEqual(result, expectedOutput, "SwapAt reverse string normal valid")
    }
    
    func testReverseStringPalindromeSwapAtForLoop() {
        var input = "nunu"
        let expectedOutput = "unun"
        let result = reverseArray.reverseArrayStringSwapAtForLoop(&input)
        XCTAssertEqual(result, expectedOutput, "SwapAt reverse string palindrome valid")
    }
    
    func testReverseArraySingleCharSwapAtForLoop() {
        var input = "n"
        let expectedOutput = "n"
        let result = reverseArray.reverseArrayStringSwapAtForLoop(&input)
        XCTAssertEqual(result, expectedOutput, "SwapAt reverse string single valid")
    }
    
    func testReverseArrayEmptyStringSwapAtForLoop() {
        var input = ""
        let expectedOutput = ""
        let result = reverseArray.reverseArrayStringSwapAtForLoop(&input)
        XCTAssertEqual(result, expectedOutput, "SwapAt reverse string empty valid")
    }
    
    // test reverse array integer
    func testReverseIntNormal() { // Tambah prefix "test"
        var input = [1,2,3,4,5,6,7,8]
        let expectedOutput = [8,7,6,5,4,3,2,1] // Perbaiki ekspektasi
        let result = reverseArray.reverseArrayInt(&input)
        XCTAssertEqual(result, expectedOutput, "reverse array integer normal is valid")
    }
    
    func testReverseIntNormal1() {
        var input = [9,8,6,3,4,2]
        let expectedOutput = [2,4,3,6,8,9]
        let result = reverseArray.reverseArrayInt(&input)
        XCTAssertEqual(result, expectedOutput, "reverse array integer normal is valid")
    }
    
    func testReverseIntSingleValue() {
        var input = [2]
        let expectedOutput = [2]
        let result = reverseArray.reverseArrayInt(&input)
        XCTAssertEqual(result, expectedOutput, "reverse array integer single value is valid")
    }
    
    func testReverseIntEmptyValue() {
        var input: [Int] = []
        let expectedOutput: [Int] = []
        let result = reverseArray.reverseArrayInt(&input)
        XCTAssertEqual(result, expectedOutput, "reverse array empty value is valid")
    }
}
