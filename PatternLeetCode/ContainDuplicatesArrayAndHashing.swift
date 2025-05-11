//
//  ContainDuplicatesArrayAndHashing.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 08/05/25.
//

import Foundation

func containDuplicateArrayAndHashing(_ listNum: [Int]) -> Bool {
    
    // 1. Understand The Problem
    // Problem Statement: jika dalam listNumber yang diinputkan terdapat angka yang sama maka kembalikan true, jika tidak kembalikan false
    // ex: input [1, 4, 1, 6], output: true
    //     input [1, 4, 6, 8], output: false
    // Input: arr [Int]
    // Output: bool
    // Constraint: -
    // Edge Cases: arr.count < 2
    
    // 2. Algoritma
    // Devise Plan
    // buat buku catatan berbentuk hashmap utk menyimpan pasangan value dan index yang terlewati saat loop
    // looping listInput yg di convert ke hashMap, dan return index + valuenya
    // cek value yg sedang di return, sudah ada di buku catatan? (ada yg sama gak di dalam buku catatan?)
    // jika ada, return true
    // jika tidak, teruskan sampe selesai sampe ketemu atau return false
    
    // Pseuducode
    // init bukuCatatan = [Int: Int]
    // for (index, value) in hashMapInput
    //      if bukuCatatan[value] != null / ""
    //          return true
    //      bukuCatatan[value] = index
    // return []
    
    // 3. Coding
    guard listNum.count >= 2 else {
        return false
    }
    var recordBook: [Int: Int] = [:]
    
    for (index, value) in listNum.enumerated() {
        if recordBook[value] != nil {
            return true
        }
        recordBook[value] = index
    }
    return false
    
    // 4. Testing
    // Test Case 1: input [1, 4, 1, 6], output: true
    // Test Case 2: input [1, 4, 6, 8], output: false
    // Test Case 3: input [4], output: false
    // Test Case 4: input [], output: false
    // Test Case 5: input [1, 1, 1, 6], output: true
    
    
    
}
