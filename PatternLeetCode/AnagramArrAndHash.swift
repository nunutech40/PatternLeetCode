//
//  AnagramArrAndHash.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 11/05/25.
//

import Foundation

// Fungsi Cek Anagram
func isAnnagram(_ s: String, _ t: String) -> Bool {
    
    // 1. Understanding the Problem
    // State The Problem: Diberikan dua string, lalu di cek, apakah dua string tersebut merupakan sebuah anagram atau bukan.
    // ex: input: "listen" dan "silent", output: true
    // Input: s1: String, s2: String
    // Output: bool
    // Constraint: x and y = String, x.count = y.count, x or y no contain spasi
    // Edge Cases: x.count != y.count, x & y = empty, x or y contains spasi
    
    
    // 2. Algoritma
    // Devise Plan
    // - buat freqMap (utk mencatatat frequensi setiap char) char -> key, freq -> value
    // - loop dan catat string1 utk setiap char ke freqMap
    // - loop setiap char string2, cek di freqMap, utk setiap data yg ada di freqMap, frequensi dikurangi satu
    //      jika tidak ditemukan data di freqMap, return false
    // - jika setiap char / key di freqMap, valuenya = 0, masa return true sbg anagram, jika tidak false
    
    // Pseuducode
    // init freqMap [Char:Int]
    // loop char in s as String
    //      freqMap[char] += 1
    // loop char in t as String
    //    if freqMap[char] == exist
    //      freqMap[char] -= 1 // utk setiap yg exist dikurangi 1, seharusnya sampe 0,
    //    else false // jika tidak exist = false
    // return true // tidak masuk ke else, berarti ditemukan semua, berarti freq = 0 semua, berarti true
    
    // 3. Coding
    guard s.count == t.count else {
        return false
    }
    guard s.count > 0 else {
        return false
    }
    
    var freqMap: [Character:Int] = [:]
    for char in s {
        freqMap[char, default: 0] += 1
    }
    
    for char in t {
        if let freq = freqMap[char], freq > 0 {
            freqMap[char]! -= 1
        } else {
            return false
        }
    }
    return true
    
    // 4. Testing
    // Test Case: Input: "Hello", "Holle", output: true
    // Test Case: Input: "annagram", "gramanna", output: true
    // Test Case: Input: "nunu", output: "unun"
    // Test Case: input: "programming", "programing", output: false
    // Test Case: Input: "naik daun", "daun naik", output: true

    
}
