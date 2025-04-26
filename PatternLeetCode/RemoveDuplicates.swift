//
//  RemoveDuplicates.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 22/04/25.
//

import Foundation


func removeDuplicate(_ nums: inout [Int]) {
    // Understanding the problem:
    // 1. Input: array yang sudah di sorting yang memiliki value double atau tidak unik [1, 2, 2, 3, 3, 5]
    // 2. Output: sorted array yang sudah tidak diduplikat [1, 2, 3, 5]
    // 3. Constraint: 1 <= k <= arr.count -> arr value bisa memuat negative,
    // 4. Edge Cases: arr.count = 0, k = 1, k = arr.count, k > arr.count
    
    // Devise plan - solve problem
    // loop data, dari awal sampe akhir [1, 2, 2, 3, 3, 5]
    // Geser data value yang unique ke arah kiri [1, 2, 3, 5, 3, 5]
    // Setiap geser, simpan kedalam uniquepos += 1
    // saat sampe akhir, semua data unique digeser ke kiri, didapatkan data akhir dari data uniquePos (uniquePos = 3)
    // hapus data array dari uniquePos + 1 sampe data terakhir -> hapus [3, 5]
    // tersisa data unique [1, 2, 3, 5]
    
    // Algoritma
    // 1. Handle arr kosong, jika kosong return
    // 2. buat uniquePos dimulai rekap dari index 1, atau value ke dua, value pertama sudah pasti unik
    // 3. Lakukan loop, buat loop dimulai dari index 1
    // 4. bandingkan array dg index uniquePos - 1 dg index i (yang sedang di loop)
    // 5. jika tidak sama dg uniquePos - 1, maka data belum ada, save data di uniquePos, dan increment uniquePos
    // 6. lakukan sampe akhir, data akan tergeser ke kiri
    // 7. hapus element yg tidak unique, arr[uniquePos] <= k <= arr.count
    
    guard !nums.isEmpty else { return }
    var uniquePos = 1
    // [1, 2, 2, 3, 3, 5]
    for i in 1..<nums.count {
        if nums[i] != nums[uniquePos - 1] {
            nums[uniquePos] = nums[i]
            uniquePos += 1
        }
    }
    nums.removeSubrange(uniquePos..<nums.count)
    
    // Buat Test Case
    // Test Case 1: input [1, 2, 2, 3, 3, 5] output [1, 2, 3, 5]
    // Test Case 2: input [1, 2, 3, 4, 5, 6] output [1, 2, 3, 4, 5, 6]
    // Test Case 3: input [] output []
    // Test Case 4: input [2, 2, 2, 2, 2] output [2]
    // Test case 5: input [6] output [6]
    
}
