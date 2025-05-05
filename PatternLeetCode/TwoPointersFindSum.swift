//
//  TwoPointersFindSum.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 01/05/25.
//

import Foundation

class TwoPointersFindSum {
    
    // Soal, diberikan list angka yang sudah diurutkan, temukan angka dari jumlah dua nilai di dalam list angka kembalikan pasangan dalam index (pasangan index)
    
    // 1. Understand the problem
    // - The Problem: cari sebuah angka berdasarkan jumlah dari dua angka yang dikombinasikan di dalam sebuah list
    // List Number: [1, 4, 5, 5, 6, 8, 9, 11]
    // Target: 13
    // Pasangan index dg jumlah target -> [1, 6]
    // Input: String
    // Output: String
    // Constraint: 2 <= k <= arr.count (minimal 2 angka)
    // Edge cases: k < 2
    
    // 2. Algoritma Design
    // * Devise Plan
    // - Jika kita gunakan dua loop, atau loop bersarang utk memasangkan setiap angka, hasilnya skenario terburuk / worst casenya akan o(n^2), jadi kita gunakan dua pointer saja, yang jalan dari kanan ke kiri, worst case nya hanya O(n)
    // - Lakukan loop yang menggunakan 2 pointer, yaitu dari sisi paling kanan dan kiri list, lalu satu persatu laju ke tengah
    // - jumlahkan setiap pointer di kanan dan kiri dan cek apakah sama dg target? atau lebih besar atau lebih kecil?
    // - penting utk mengetahui lebih besar dan lebih kecilnya jika tidak sama
    // - jika lebih besar, cari angka yg lebih kecil, oleh karena itu pointer kanan geser ke kiri (decrement 1)
    // - jika lebih kecil, cari angka yang lebih besar, oleh karena itu pointer kiri akan geser ke kanan 1 (increment 1)
    // - sampe ketemu atau return []
    
    // * Algoritma
    // init pointer -> left and right
    // do loop
    //   sum = arr[left] + arr[right]
    //   if sum == target
    //      return [left, right]
    //   else if sum > target
    //      right -=1
    //   else
    //      left +=1
    
    // 3. Coding
    
    func twoSumFindTarget(_ listNum: [Int], _ target: Int) -> [Int]{
        guard listNum.count >= 2 else {
            return []
        }
        var left = 0
        var right = listNum.count - 1
        while left < right {
            let sum = listNum[left] + listNum[right]
            if sum == target {
                return [left, right]
            } else if sum > target {
                right -= 1
            } else {
                left += 1
            }
        }
        return []
    }
    
    func twoPointersFindSumFor(_ listNum: [Int], _ target: Int) -> [Int] {
        guard listNum.count >= 2 else {
            return []
        }
        
        var left = 0
        var right = listNum.count - 1
        
        for _ in 0..<listNum.count {
            if left >= right {
                break
            }
            let sum = listNum[left] + listNum[right]
            if sum == target {
                return [left, right]
            } else if sum > target {
                right -= 1
            } else {
                left += 1
            }
        }
        return []
    }
    
    // 4. Testing
    // Test Case 1 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target: 13, Output = [1, 6]
    // Test Case 2 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target 34, Output = []
    // Test Case 3 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target 20, Output = [6, 7]
    // Test Case 4 => Input = list: [1, 4, 5, 5, 6, 8, 9, 11] and target -4, Output = []
    // Test Case 5 => Input = list: [1] and target 13, Output = []
    // Test Case 6 => Input = list: [] and target 4, Output = []
    // Test Case 7 => Input = list: [5, 5, 6] and target 10, Output = [0, 1]
}
