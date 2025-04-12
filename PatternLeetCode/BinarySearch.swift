//
//  BinarySearch.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 10/04/25.
//

import Foundation
import SwiftUI

class BinarySearch: ObservableObject {
    
    @Published var result: Int = 0
    
    init () {
        result = binarySearch([2, 3, 4, 10, 40], 5)
    }

    
    /// Temukan index dari target value dalam sebuah array yang terurut menggunakan binary search
    /// - Parameters:
    ///   - nums: sebuah array interger yang terurut (ascending)
    ///   - target: value yang dicari
    /// - Returns: index dari target, atau kembalikan -1, jika tidak ditemukan
    /// - Note: Diasumsikan bahwa input array terurut dalam urutan ascending
    ///
    ///
    func binarySearch(_ nums: [Int], _ target: Int) -> Int {
        // Step 1: Understand the Problem
        // - Input: Array integer (nums) terurut secara ascending order, target integer (target)
        // - Output: Index dari value target di dalam array nums
        // - Constraint: Array yang terurut, element harus unik, array tidak boleh kosong
        // - Edge Case: Array kosong, value target tidak ditemukan dalam array, target berada di awal/akhir array
        
        // Step 2: Devise Plan
        // - Karena array sudah di sorting, menggunakan binary search akan mendapatkan O(log n) time complexity
        // - Mulai dengan pointers: left sebagai awal dan right sebagai akhir
        // - Lakukan pembagian array menjadi dua secara berulang
        //   - Hitung index tengah
        //   - jika element tengahnya adalah target, return
        //   - jika element tengahnya lebih kecil dari target, cari disebelah kiri
        //   - jika element tengahnya lebih besar dari target, cari disebelah kanan
        // - Jika target tidak ditemukan, kembalikan -1
        
        // Step 3: Pseuducode
        // init left = 0
        // init right = array length - 1
        // while left < right
        //   mid = (left + right) / 2
        //   if array[mid] = target: return mid
        //   if array[mid] < target: left: mid + 1
        //   if array[mid] > target: right: mid - 1
        // return 1
        
        // Step 4: Implement Codes
        // Handle edge case: empty array
        if nums.isEmpty { return -1 }
        
        var left = 0
        var rigth = nums.count - 1
        
        if left == 0 && rigth == 0 {
            return 0
        }
        
        while left < rigth {
            let mid = left + (rigth - left) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                rigth = mid - 1
            }
            
        }
        
        // Step 5: Test and Refine
        // - Test Case 1: nums [2, 3, 4, 10, 40], target = 10 -> Expected: 3
        // - Test Case 2: nums [], target = 5 > expected = -1
        // - Test Case 3: nums [1], target = 1, expected = 0
        // - Test Case 4: nums [2, 3, 4, 10, 40], target = 5 -> expected: -1
        // - Refinement: Consider using mid = left + (right - left) / 2 to avoid integer overflow
        //   (not critical in Swift for small arrays, but good practice for large arrays)
        
        
        return -1
    }
}
