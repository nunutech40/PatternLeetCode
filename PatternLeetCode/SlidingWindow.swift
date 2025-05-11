//
//  SlidingWindow.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 15/04/25.
//

import Foundation

class SlidingWindow {
    
    /// Temukan jumlah terbanyak dari sub array dengan panjang subzie = k menggunakan sliding window
    /// - Parameters:
    ///  - arr: Sebuah array integer
    ///  - k: panjang dari subarray
    /// - Returns: Jumlah paling banyak / maximal dari sub array dengan panjang k
    /// - Note: Asumsikan k itu benar (1 <= k <= arr.count)
    ///
    func maxSumSubArray(_ arr: [Int], _ k: Int) -> Int {
        // 1. Understanding the Problem
        // Problem Statement: Cari jumlah urutan terbesar dari k angka di dalam sebuah n (array int)
        // Ex: input: [2, 1, 5, 1, 3, 2], output: k = 3
        // Input: Arr Int
        // Output: Int
        // Constraint: n >= k
        // Edge Cases: n < k, n = x (item sama),
        
        // 2. Algoritma Design
        // Devise Plan
        // Loop arr integer n
        // Utk setiap 3 angka berdasarkan left dan right, jumlahkan
        // catat jumlah terbesar yg pernah dilakukan
        
        // Pseuducode
        // input arr[Int], k: Int
        // init left dan right
        // left = 0
        // right = k - 1
        // init maxSum: Int
        // loop arr[Int]
        //     sum = prefix(left, right).reduce()
        //     maxSum = (sum, maxSum)
        //     increment left and right
        // return maxSum
        
        // 3. Coding
        guard arr.count >= k else { return 0 }
        
        var sum = arr.prefix(k).reduce(0, +)
        
        var maxSum = sum
        
        var left = 0
        var right = k - 1
        
        for _ in right..<(arr.count - 1) {
            sum -= arr[left]
            sum += arr[right + 1]
            
            maxSum = max(sum, maxSum)
            
            left += 1
            right += 1
        }
        
        return maxSum
        
        // 4. Testing
        // - Test Case 1: arr = [1, 4, 2, 10, 2, 3, 1, 0, 20], k = 4 -> Expected: 24 ([10, 2, 3, 1])
        // - Test Case 2: arr = [1], k = 1 -> Expected: 1
        // - Test Case 3: arr = [1, 2, 3], k = 3 -> Expected: 6
        // - Test Case 4: arr = [], k = 1 -> Expected: 0
        // - Refinement: Consider handling negative numbers
        // - Optimization: Code is already O(n) time, O(1) space, no futher optimization needed
        
    }
    
    func longestStringWithoutRepeatingChar(_ strInput: String) -> String {
        // 1. Understanding the problem
        // ex: abcabcbb, output: "abc"
        // Problem: cari substring terpanjang tanpa character berulang
        // Input: String
        // Output: String
        // Constraint: - no constraint
        // Edge Cases: str = empty
        
        // 2. Algoritma Design
        // Devise Plan
        // - gunakan sliding widow dinamis
        // - buat indexCatatan, catatanMap (char:indexCatatan), result
        // - looping input string utk setiap char
        //      cek apakah char ada di catatanMap?
        //      jika tidak
        //          indexCatatan increment
        //          insert-> catatanmap char:indexCatatan
        //      jika ya
        //          reset catatanMap, indexCatatan, dan pilih count result yg lebih panjang
        //   kembalikan resultnya
        
        
        // Pseducode
        // input -> strInput: String
        // init indexCatatan = 0
        // init catatanMap = [Char:Int]
        // init result = ""
        // init left = 0
        // init right = 0
        // while right <= strInput.count - 1
        //      indexChar = strIndex(left)
        //      getChar = getChar(indexChar)
        //      if let existChar == catatanMap[getChar] // jika ada char yg sama lalukan reset
        //           catatanMap = [:]
        //           indexCatatan = 0
        //           getPrefixStrInput(left, right)
        //           if result.count < getPrefixStrInput.count
        //              result = getPrefixStrInput
        //           left = right + 1
        //           right = left
        //      else
        //           indexCatatan += 1
        //           right += 1
        //           catatanMap[getChar] = indexCatatan // masukan ke catatan
        
        // 3. Coding
        var indexCatatan = 0
        var catatanMap: [Character: Int] = [:]
        var result = ""
        
        var left = 0
        var right = 0
        
        while right < strInput.count {
            let indexChar = strInput.index(strInput.startIndex, offsetBy: right)
            let getChar = strInput[indexChar]
            
            if let _ = catatanMap[getChar] {
                
                // get prefix
                let sliceStart = strInput.index(strInput.startIndex, offsetBy: left)
                let sliceEnd = strInput.index(strInput.startIndex, offsetBy: right)
                let currentSlice = String(strInput[sliceStart..<sliceEnd])
                
                // pilih longest string without repeat, from result or currentSlice
                if currentSlice.count > result.count {
                    result = currentSlice
                }
                
                // reset left, right, indexCatatan, catatanMap
                left += 1
                right = left
                indexCatatan = 0
                catatanMap = [:]
                
            } else {
                // record char
                indexCatatan += 1
                catatanMap[getChar] = indexCatatan
                right += 1
            }
        }
        if indexCatatan > result.count {
            let sliceStart = strInput.index(strInput.startIndex, offsetBy: left)
            let sliceEnd = strInput.index(strInput.startIndex, offsetBy: right)
            let currentSlice = String(strInput[sliceStart..<sliceEnd])
            result = currentSlice
        }
        return result
        
        // 4. Testing
    }
    
}
