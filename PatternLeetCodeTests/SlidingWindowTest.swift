//
//  SlidingWindowTest.swift
//  PatternLeetCodeTests
//
//  Created by Nunu Nugraha on 11/05/25.
//


import XCTest
@testable import PatternLeetCode

final class SlidingWindowTest: XCTestCase {
    
    var sut: SlidingWindow!
    
    override func setUp() {
        super.setUp()
        sut = SlidingWindow()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    // Test Case 1: Normal input
    func testMaxSumSubArray_NormalCase() {
        let arr = [1, 4, 2, 10, 2, 3, 1, 0, 20]
        let k = 4
        let expected = 24 //
        XCTAssertEqual(sut.maxSumSubArray(arr, k), expected)
    }
    
    // Test Case 2: Single element
    func testMaxSumSubArray_SingleElement() {
        let arr = [1]
        let k = 1
        let expected = 1
        XCTAssertEqual(sut.maxSumSubArray(arr, k), expected)
    }
    
    // Test Case 3: All elements included
    func testMaxSumSubArray_WholeArray() {
        let arr = [1, 2, 3]
        let k = 3
        let expected = 6
        XCTAssertEqual(sut.maxSumSubArray(arr, k), expected)
    }
    
    // Test Case 4: Empty array
    func testMaxSumSubArray_EmptyArray() {
        let arr: [Int] = []
        let k = 1
        let expected = 0
        XCTAssertEqual(sut.maxSumSubArray(arr, k), expected)
    }
    
    // Test Case 5: k greater than array size
    func testMaxSumSubArray_KGreaterThanArraySize() {
        let arr = [1, 2]
        let k = 3
        let expected = 0
        XCTAssertEqual(sut.maxSumSubArray(arr, k), expected)
    }
    
    // Test Case 6: Array with negative numbers
    func testMaxSumSubArray_WithNegativeNumbers() {
        let arr = [2, -1, 5, -3, 6, -2, 3]
        let k = 3
        let expected = 8 // [5, -3, 6]
        XCTAssertEqual(sut.maxSumSubArray(arr, k), expected)
    }
    
    // Test Case 7: All zeros
    func testMaxSumSubArray_AllZeros() {
        let arr = [0, 0, 0, 0, 0]
        let k = 2
        let expected = 0
        XCTAssertEqual(sut.maxSumSubArray(arr, k), expected)
    }
    
    
    // testing for longest unique substring
    // Test Case 1: Normal input
    func testLongestUniqueSubstring_NormalCase() {
        let input = "abcabcbb"
        let expected = "abc"
        XCTAssertEqual(sut.longestStringWithoutRepeatingChar(input), expected)
    }
    
    // Test Case 2: Unik semua
    func testLongestUniqueSubstring_AllUnique() {
        let input = "abcdef"
        let expected = "abcdef"
        XCTAssertEqual(sut.longestStringWithoutRepeatingChar(input), expected)
    }
    
    // Test Case 3: Semua sama
    func testLongestUniqueSubstring_AllSameChar() {
        let input = "aaaaaaa"
        let expected = "a"
        XCTAssertEqual(sut.longestStringWithoutRepeatingChar(input), expected)
    }
    
    // Test Case 4: Ada di tengah
    func testLongestUniqueSubstring_InMiddle() {
        let input = "pwwkew"
        let expected = "wke"
        XCTAssertEqual(sut.longestStringWithoutRepeatingChar(input), expected)
    }
    
    // Test Case 5: Karakter terakhir yang paling panjang
    func testLongestUniqueSubstring_AtEnd() {
        let input = "aabcbdef"
        let expected = "cbdef"
        XCTAssertEqual(sut.longestStringWithoutRepeatingChar(input), expected)
    }
    
    // Test Case 6: String kosong
    func testLongestUniqueSubstring_EmptyString() {
        let input = ""
        let expected = ""
        XCTAssertEqual(sut.longestStringWithoutRepeatingChar(input), expected)
    }
    
    // Test Case 7: String dengan spasi
    func testLongestUniqueSubstring_WithSpaces() {
        let input = "a b c a b"
        let expected = "a b"
        XCTAssertEqual(sut.longestStringWithoutRepeatingChar(input), expected)
    }
    
    // Test Case 8: Panjang 1
    func testLongestUniqueSubstring_OneChar() {
        let input = "z"
        let expected = "z"
        XCTAssertEqual(sut.longestStringWithoutRepeatingChar(input), expected)
    }
    
    // Test Case 9: Kombinasi huruf besar dan kecil
    func testLongestUniqueSubstring_CaseSensitive() {
        let input = "aAbBcC"
        let expected = "aAbBcC" // case-sensitive jadi semua beda
        XCTAssertEqual(sut.longestStringWithoutRepeatingChar(input), expected)
    }
}
