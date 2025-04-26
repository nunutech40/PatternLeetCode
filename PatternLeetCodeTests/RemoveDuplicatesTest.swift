//
//  RemoveDuplicatesTest.swift
//  PatternLeetCodeTests
//
//  Created by Nunu Nugraha on 22/04/25.
//

import XCTest
@testable import PatternLeetCode

final class RemoveDuplicateTests: XCTestCase {
    
    func testRemoveDuplicate_WithDuplicates() {
        var array = [1, 2, 2, 3, 3, 5]
        removeDuplicate(&array)
        XCTAssertEqual(array, [1, 2, 3, 5], "Harus menghapus nilai duplikat dari array terurut.")
    }
    
    func testRemoveDuplicate_EmptyArray() {
        var array: [Int] = []
        removeDuplicate(&array)
        XCTAssertEqual(array, [], "Array kosong tetap kosong.")
    }
    
    func testRemoveDuplicate_NoDuplicates() {
        var array = [1, 2, 3, 4, 5]
        removeDuplicate(&array)
        XCTAssertEqual(array, [1, 2, 3, 4, 5], "Array tanpa duplikat tidak berubah.")
    }
    
    func testRemoveDuplicate_AllSame() {
        var array = [7, 7, 7, 7, 7]
        removeDuplicate(&array)
        XCTAssertEqual(array, [7], "Array semua elemen sama harus jadi satu elemen.")
    }
    
    func testRemoveDuplicate_OnlyOne() {
        var array = [7]
        removeDuplicate(&array)
        XCTAssertEqual(array, [7], "Array satu elemen harus mengeluarkan 1 elemen.")
    }
    
    
}

