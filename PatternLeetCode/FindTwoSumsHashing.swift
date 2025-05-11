//
//  FindTwoSumsHashing.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 08/05/25.
//

import Foundation


func findTwoSumHash(_ nums: [Int], _ target: Int) -> [Int] {
    
    // 1. Understand The Problem
    // Problem Statement: mencari pasangan index dari dua angka dg jumlah yang ditentukan
    // input: [3, 7, 4, 11, 6, 5, 8], target: 11, output: [1, 2]
    // Input: array Int dan Int tidak terurut
    // Outuput: Array Int [index, index]
    // Constraint: - no constraint
    // Edge Cases: arr = [], arr = [3], arr = [duplikat element]
    
    // 2. Algoritma
    // Devise Plan
    // buat buku catatan utk catat data value index yang sudah di lewati saat loop
    // rubah inputList jadi hashmap, dg begitu setiap value punya index
    // loop inputList yg sudah jadi hashmap dan return index + value
    // cek angka kurangnya, target - value (target 11, value 3, 11 - 3 = 8)
    // cari index dg value [angkaKurangya] => catatan[angkaKurangya] || catatan[8]
    // simpan data value dan indexknya ke dalam buku catatan
    // buku catatan akan punya data pasangan value index
    // jika ketemu, return pasangan indexnya, [indexLoop, index[value == complement]
    // jika tidak ketemu, next ke index dan value selanjutnya, dan lakukan lagi, cari target berdasarkan angka kurangnya
    
    // Pseuducode
    // guard inputList.count > 2
    // init bukuCatatan = [Int: Int]
    // for (index, value) in hashMap(inputList)
    //      complement = target - value
    //      if complementIndex = inputListMap[complement]
    //          return [index, complementIndex]
    //      bukuCatatan[value] = index
    // return []
    
    // 3. Coding
    guard nums.count >= 2 else {
        return []
    }
    
    var catatan: [Int: Int] = [:] // init buku catatan
    
    for (index, value) in nums.enumerated() {
        let complement = target - value // init complement
        
        if let complementIndex = catatan[complement] {
            return [complementIndex, index] // complement index dulu returnnya, karena berasal dari data yg sudah di loop (terlewati, jadi dia data sebelumny)
        }
        catatan[value] = index // mencatat setiap pasangan index + value, utk dicari apakah ada data value yg sesuai complement yang lagi dicari
    }
    
    return []
    
    // 4. Testing
    // Test Case 1: input: [3, 7, 4, 11, 6, 5, 8], target: 11, output: [1, 2] ATAU [4, 5] atau [0, 6]
    // Test Case 1: input: [3, 7, 4, 11, 6, 5, 8], target: 100, output: []
    // Test Case 2: input: [3], target: 11, output: []
    // Test Case 3: input: [], target: 11, output: []
    // Test Case 4: input: [3, -7, 4, -11, 6, -5, 8], target: 11, output: [3, 8]
}
