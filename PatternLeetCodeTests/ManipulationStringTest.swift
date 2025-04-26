//
//  ManipulationStringTest.swift
//  PatternLeetCodeTests
//
//  Created by Nunu Nugraha on 26/04/25.
//

import XCTest
@testable import PatternLeetCode

class ManipulationStringTest: XCTestCase {
    
    var manipulationString: ManipulationString!
    
    override func setUp() {
        super.setUp()
        manipulationString = ManipulationString()
        manipulationString = ManipulationString()
    }
    
    override func tearDown() {
        manipulationString = nil
        super.tearDown()
    }
    
    // Test Case 1: Normal String Case Tanpa Angka
    func testAnalisisStringNormal() {
        let input = "Rizka Fajar Nugraha"
        let expectedOutput : [String: Any] = [
            "Jumlah Karakter": 17,
            "Jumlah Kata": 3,
            "Memiliki Angka": false
        ]
        let result = manipulationString.analisisString(input)
        XCTAssertEqual(result as NSDictionary, expectedOutput as NSDictionary, "String normal tidak memiliki angka")
    }
    
    // Test Case 2: input: "R12k4 F4j4r Nu9r4h4" output: ["Jumlah Karakter": 17, "Jumlah Kata": 3, "Memiliki Agnka": true]
    func testAnalisisStringWithNumber() {
        let input = "R12k4 F4j4r Nu9r4h4"
        let expectedOutput: [String: Any] = [
            "Jumlah Karakter": 17,
            "Jumlah Kata": 3,
            "Memiliki Angka": true
        ]
        let result = manipulationString.analisisString(input)
        XCTAssertEqual(result as NSDictionary, expectedOutput as NSDictionary, "String dengan angka")
    }
    
    // Test Case 3: input: "" output: ["Jumlah Karakter": 0, "Jumlah Kata": 0, "Memiliki Agnka": false]
    func testAnalisisStringEmpty() {
        let input = ""
        let expectedOutput: [String: Any] = [
            "Jumlah Karakter": 0,
            "Jumlah Kata": 0,
            "Memiliki Angka": false
        ]
        let result = manipulationString.analisisString(input)
        XCTAssertEqual(result as NSDictionary, expectedOutput as NSDictionary, "String empty return 0 dan false")
    }
    
    // Test Case 4: input = "F", output: ["Jumlah Karakter": 1, "Jumlah Kata": 1, "Memiliki Agnka": false]
    func testAnalisisStringSingleCharacter() {
        let input = "F"
        let expectedOutput: [String: Any] = [
            "Jumlah Karakter": 1,
            "Jumlah Kata": 1,
            "Memiliki Angka": false
        ]
        let result = manipulationString.analisisString(input)
        XCTAssertEqual(result as NSDictionary, expectedOutput as NSDictionary, "String dengan single character, 1, 1, false")
        
    }
    
    // Test Case 5: input = "7", output: ["Jumlah Karakter": 1, "Jumlah Kata": 1, "Memiliki Agnka": true]
    func testAnalisisStringSingleNumber() {
        let input = "7"
        let expectedOutput: [String: Any] = [
            "Jumlah Karakter": 1,
            "Jumlah Kata": 1,
            "Memiliki Angka": true
        ]
        let result = manipulationString.analisisString(input)
        XCTAssertEqual(result as NSDictionary, expectedOutput as NSDictionary, "Return single numbers adalah, 1,1,true")
    }
    
    // Test Case 6: input = "Rizka  Fajar", output: ["Jumlah Karakter": 10, "Jumlah Kata": 2, "Memiliki Agnka": false]
    func testAnalisisStringMultipleSpasi() {
        let input = "Rizka  Fajar"
        let expectedOutput: [String: Any] = [
            "Jumlah Karakter": 10,
            "Jumlah Kata": 2,
            "Memiliki Angka": false
        ]
        let result = manipulationString.analisisString(input)
        XCTAssertEqual(result as NSDictionary, expectedOutput as NSDictionary, "Multiple Spasi dihitung 1 spasi")
    }
}
