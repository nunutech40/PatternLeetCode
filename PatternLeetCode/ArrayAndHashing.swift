//
//  ArrayAndHashing.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 26/03/25.
//

import Foundation
import SwiftUI

// Two Sums
// jumlahkan setiap data dari dua data di dalam array, dan cari jumlah data yang sesuai dg target
// contoh
// array = [2, 7, 11, 15]
// target 9
// output = [0, 1] = 2 + 7 = 9

// kalau dalam matematika, ini seperti kombinasi dari 2 angka di dalam urutan angka.
// C(n,k)
// dg contoh data di atas, jadinya, C(4,2) = 6 kombinasi,
// (2 ,7), (2, 11), (2, 15)
// (7, 11), (7, 15)
// (11,  15)

class ArrayAndHashing: ObservableObject {
    
    @Published var result : [Int] = []
    
    init() {
        result = twoSumWithTarget([6, 2, 4, 11, 16, 8, 7], 13)
    }
    
    // fungsi twosums menggunakan looping bersarang
    // bandingkan list data 2, 7, 11, 15 sebagai i dengan j, di mana j = i + 1
    // lalu increment i
    func twoSums(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = []
        for i in 0..<(nums.count - 1) {
            for j in (i + 1)..<(nums.count-1) {
                if nums[i] + nums[j] == target {
                    print("Found pair: [\(i), \(j)]")
                    result = [i, j]
                    return result
                }
            }
        }
        return result
    }
    
    // Hashing
    // fungsi twosums2 -> ini adalah salah satu cara utk implementasi algoritma hashing dg data yang tidak terurut
    // Fungsi ini -> untuk mencari pasangan index yang valuenya jika dijumlah adalah target / x
    // Mencari kekurangan angka target yang ada di catatan dg data yang ada
    // 1. Cari 9
    // 2. catat angka awal dari list, 2
    // 3. target 9, kuragnya (9-2) = 7
    // 4. cari angka 7 dalam list,
    // 5. kalau tidak ketemu iterasi, kalau ketemu catat indexnya
    // yg digunakan:
    
    // struktur data yg digunakan hashmap -> supaya bisa melakukan pencarian angka kurangnya dengan menjadikan angka kurangnya sebagai value (O1)
    // array sebagai inputan -> akan diconvert ke hashmap dg index sebagai key(berurutan) dan item sebagai value
    // hashmap utk mencatat angka yang sudah ada utik dicari kekuranganya
    
    // Input: nums array int, target int
    // buat variable utk pencatatan angka yang ada (hashmap) [int: int]
    // convert inputan array int ke hashmap -> arrayInt.enumerated
    // looping (index, value) -> arrayInt.enumerated (hashmap)
    // dapatkan complement (angka kurangnya) dg mengurangi target - value
    // dapatkan index dari value complement (complementIndex), hashmap[complement]
    // return [complementIndex, index]
    // catat index dari value sebe
    // default return []
    // Output: array int (pasangan index yg valuenya dijumlahkan hasilnya adalah angka target)
    func twoSumWithTarget(_ listAngka: [Int], _ target: Int) -> [Int] {
        var catatan: [Int: Int] = [:]
        
        for (index, value) in listAngka.enumerated() {
            // enumerated dari [2, 7, 11, 15, 17] = (0, 2),(1, 7),(2, 11),(3, 15)
            let complement = target - value
            if let complementIndex = catatan[complement] {
                return [complementIndex, index]
            }
            catatan[value] = index
         }
        return []
    }
}
