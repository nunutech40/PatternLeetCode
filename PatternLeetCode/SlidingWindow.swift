//
//  SlidingWindow.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 15/04/25.
//

import Foundation

class SlidingWindow: ObservableObject {
    
    @Published var result: Int = 0
    
    init() {
        result = maxSumSubArray([1, 4, 2, 10, 2, 3, 1, 0, 20], 4)
    }
    
    /// Temukan jumlah terbanyak dari sub array dengan panjang subzie = k menggunakan sliding window
    /// - Parameters:
    ///  - arr: Sebuah array integer
    ///  - k: panjang dari subarray
    /// - Returns: Jumlah paling banyak / maximal dari sub array dengan panjang k
    /// - Note: Asumsikan k itu benar (1 <= k <= arr.count)
    ///
    func maxSumSubArray(_ arr: [Int], _ k: Int) -> Int {
        // Step 1: Understand The Problem
        // - Input: Array of Integer (arr), integer k (subarray size)
        // - Output: Maximum sum of a subarray of size k
        // - Constraint: 1 <= k <= arr.count, arr can contain negative numbers
        // - Edge Cases: k = 1, k = arr.count, arr is empty, k > arr.count
        
        // Step 2: Devise a Plan
        // - Use a fixed-size sliding window of size k
        // - Compute the sum of the first window (first k elements)
        // - Slide the window accros the array:
        //   - Substract the leftmost element of the previous window -> substract itu kurangkan -> kurangkan atau buang element paling kiri dari window
        //   - Add the next element to the right
        //   - Update the maximum sum, if the current window sum is larger
        // - Return the maximum found
        
        // Step 3: Write Pseuducode
        // if arr is empty or k <= 0 or k > arr length: return 0
        // initialize windowSum = sum of first k elements
        // initialize maxSum = windowSum
        // for i from k to arr length - 1:
        //   windowSum = windowSum - arr[i - k] + arr[i]
        //   maxSum = max(maxSum, windowSum)
        // return maxSum
        
        // Step 4: Implement Code
        // Handle edge cases
        if arr.isEmpty || k <= 0 || k > arr.count {
            return 0
        }
        
        // Compute sum of first window
        // ambil data dari array, prefix meaning beberapa char awal sampe ka, lalu di reduce (digabung dg operation +)
        var windowSum = arr.prefix(k).reduce(0, +)
        var maxSum = windowSum
        
        for i in k..<arr.count - 1 {
            // hapus value sejumlah first value dalam windowsum
            // arr[i - k] -> artinya, jika i = k(misal length 3), akan dikurangi sejumlah length dari k(3-3 = 0)
            // -> untuk mendapatkan first value pada subsarray / window
            windowSum = windowSum - arr[i - k] + arr[i]
            maxSum = max(maxSum, windowSum)
        }
        
        // Step 5: Test and Refine
        // - Test Case 1: arr = [1, 4, 2, 10, 2, 3, 1, 0, 20], k = 4 -> Expected: 24 ([10, 2, 3, 1])
        // - Test Case 2: arr = [1], k = 1 -> Expected: 1
        // - Test Case 3: arr = [1, 2, 3], k = 3 -> Expected: 6
        // - Test Case 4: arr = [], k = 1 -> Expected: 0
        // - Refinement: Consider handling negative numbers
        // - Optimization: Code is already O(n) time, O(1) space, no futher optimization needed
        
        return maxSum
        
    }
    
}
