//
//  ManipulationString.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 26/04/25.
//

import Foundation

class ManipulationString {
    
    // Soal
    // Buat fungsi:
    // Menerima input string
    // Mengembalikan dictionary dengan informasi: jumlah karakter, jumlah kata, dan apakah string mengandung angka
    func analisisString(_ input: String) -> [String: Any] {
        // 1. Understand the problem
        // Membuat fungsi yang mengembalikan dictionary yang isinya ["Jumlah Karakter ": angka as Int, "Jumlah Kata: " : angka as Int, "Punya angka: " : "true/false" as boolean]
        // Input String
        // Output Dict
        // Constraint - No Constraint
        // Edge Cases - k = 0
        
        // 2. Algoritma Design
        // Devise Plan
        // 1. buat variable dictionary utk menyimpan hasilnya
        // 2. hitung karakter string -> gunakan fungsi count -> simpan kedict
        // 3. split string berdasarkan tanda " " (spasi), hitung hasil jumlah valuenya di dalam array string -> simpan ke dict
        // 4.gunakan fungsi contain "0-9" dari string -> hasilnya di count -> jika lebih besar dari 0, return true -> simpan ke dict
        
        // Pseuducode
        // 1. var dictResult
        // 2. - charCount = input.count
        // 3. - spasicount = input.contain(" ").count
        //    - dictResult["Jumlah Karakter": charcount - spasicount]
        // 3. - let wordCount = input.split("").count
        //    - dictResult["Jumlah Kata" : wordCount]
        // 4. - let angkaCount = input.contain("0-9").count
        //    - dictResult["Memiliki Angka": true/false]
        
        // 3. Tulis kode (coding)
        // handling edge case string input = []
        guard input.count > 0 else {
            return ["Jumlah Karakter": 0, "Jumlah Kata": 0, "Memiliki Angka": false]
        }
        var dictResult : [String: Any] = [:]
        let charCount = input.trimmingCharacters(in: .whitespaces).count
        let spaseCount = input.filter {" ".contains($0) }.count
        dictResult["Jumlah Karakter"] = charCount - spaseCount as Int
        
        let wordCount = input.split(separator: " ").count
        dictResult["Jumlah Kata"] = wordCount as Int
        
        let angkaCount = input.filter { "0123456789".contains($0) }.count
        dictResult["Memiliki Angka"] = angkaCount > 0 ? true : false as Bool
        
        // 4. Uji kode (testing)
        // Test Case 1: input: "Rizka Fajar Nugraha" output: ["Jumlah Karakter": 17, "Jumlah Kata": 3, "Memiliki Agnka": false]
        // Test Case 2: input: "R12k4 F4j4r Nu9r4h4" output: ["Jumlah Karakter": 17, "Jumlah Kata": 3, "Memiliki Agnka": true]
        // Test Case 3: input: "" output: ["Jumlah Karakter": 0, "Jumlah Kata": 0, "Memiliki Agnka": false]
        // Test Case 4: input = "F", output: ["Jumlah Karakter": 1, "Jumlah Kata": 1, "Memiliki Agnka": false]
        // Test Case 5: input = "7", output: ["Jumlah Karakter": 1, "Jumlah Kata": 1, "Memiliki Agnka": true]
        // Test Case 6: input = "Rizka  Fajar", output: ["Jumlah Karakter": 10, "Jumlah Kata": 2, "Memiliki Agnka": false]
        
        // 5. Perbaiki dan ot (debugging and Optimization)
        
        
        return dictResult
    }
}
