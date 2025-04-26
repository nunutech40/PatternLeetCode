//
//  TwoPointersTest.swift
//  PatternLeetCodeTests
//
//  Created by Nunu Nugraha on 20/04/25.
//

import XCTest
@testable import PatternLeetCode

class TwoPointersTest: XCTestCase {
    var twoPointers: TwoPointers!
    
    override func setUp() {
        super.setUp()
        twoPointers = TwoPointers()
    }
    
    override func tearDown() {
        twoPointers = nil
        super.tearDown()
    }
    
    // Unit Testing Reverse array with whie loop
    // Test reverse array
    func testReverseArray_EventLength() {
        var array = [1, 2, 3, 4, 5, 6, 7, 8]
        twoPointers.reverseArray(&array)
        XCTAssertEqual(array, [8, 7, 6, 5, 4, 3, 2, 1], "Array genap terbalik sempurna")
    }
    
    func testReverseArray_OddLength() {
        var array = [1, 2, 3, 4, 5, 6, 7]
        twoPointers.reverseArray(&array)
        XCTAssertEqual(array, [7, 6, 5, 4, 3, 2, 1], "Array ganjil terbalik sempurna")
    }
    
    func testReverseArray_EmptyArray() {
        var array: [Int] = []
        twoPointers.reverseArray(&array)
        XCTAssertEqual(array, [], "Array kosong harus tetap kosong")
    }
    
    func testReverseArray_SingleElement() {
        var array = [1]
        twoPointers.reverseArray(&array)
        XCTAssertEqual(array, [1], "Array dengan satu elemen harus tetap sama")
    }
    
    
    // Unit Testing Reverse array with for loop
    // Test reverse array
    func testReverseArray2_EventLength() {
        var array = [1, 2, 3, 4, 5, 6, 7, 8]
        twoPointers.reverseArrayV2(&array)
        XCTAssertEqual(array, [8, 7, 6, 5, 4, 3, 2, 1], "Array genap terbalik sempurna")
    }
    
    func testReverseArray2_OddLength() {
        var array = [1, 2, 3, 4, 5, 6, 7]
        twoPointers.reverseArrayV2(&array)
        XCTAssertEqual(array, [7, 6, 5, 4, 3, 2, 1], "Array ganjil terbalik sempurna")
    }
    
    func testReverseArray2_EmptyArray() {
        var array: [Int] = []
        twoPointers.reverseArrayV2(&array)
        XCTAssertEqual(array, [], "Array kosong harus tetap kosong")
    }
    
    func testReverseArray2_SingleElement() {
        var array = [1]
        twoPointers.reverseArrayV2(&array)
        XCTAssertEqual(array, [1], "Array dengan satu elemen harus tetap sama")
    }
}
