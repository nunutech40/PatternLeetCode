//
//  TwoPointers.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 10/04/25.
//

import Foundation
import SwiftUI

class TwoPointers: ObservableObject {
    @Published var result: [Int] = []
    
    init () {
        result = twoPointersSumWithTarget([2, 4, 7, 8, 11, 14], 25)
    }
    
    /// Finds two indices in a sorted array whose values sum to the target using two pointers
    /// - Parameters:
    ///    - listAngka: A sorted array of integers
    ///    - target: The target sum
    /// - Returns an array of two indices, or empty array if no solution
    /// Fungsi twosums -> salah satu cara implement algoritma two pointers, dari sisi kiri dan kanan ke arah tengah
    ///
    // Langkah Intuitif
    // - Gunakan data yang terurut
    // - Cari dua angka yang jumlahnya target yang dicari
    // - Mulai dari kiri (awal) dan kanan (akhir), jumlahkan angkanya
    // - Kalau terlalu besar, geser pointer kanan ke kiri
    // - Kalau terlalu kecil, geser pointer kiri ke kanan
    // - Kalau pas, ketemu!
    
    // yang digunakan
    // array -> data terurut
    // looping -> for
    // if else, return
    
    // Input: listAngka: int, target: int
    // algoritma
    // 1. buat variable left int dg default data 0 -> sebagai pointer kiri
    // 2. buat variable right int right dengan default data listAngka.count - 1 -> sebagai pointer kanan
    // 3. selama variable left < dari right, lakukan -> supaya tidak saling overlap
    // a. ambil jumlah dari left dan right
    // b. jika jumlah left dan right > target, right - 1 (iterasi minus)
    // c. jika jumlah left dan right < target, left + 1
    // d. jika jumlah left dan right == target, return [left, right]
    // 4. default return []
    // output [Int], pasangan index dg jumlah value sesuai target
    func twoPointersSumWithTarget(_ listAngka: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = listAngka.count - 1
        
        while left < right {
            let sum = listAngka[left] + listAngka[right]
            if sum == target {
                return [left, right]
            } else if sum < target {
                left += 1
            } else {
                right -= 1
            }
        }
        return []
    }
    
    // Catatan tambahan - PAKE CARA MATEMATIKA - HAHAHA
    // Diketahui: Array terurut [2, 7, 11, 15, 17], target 17.
    // Ditanya: Dua indeks yang jumlahnya 17.
    // Jawab: Pakai Two Pointers, mulai dari ujung, geser, temuin [0, 3].
}
