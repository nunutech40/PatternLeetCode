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
    
    
    func ekstrakKontak(_ teks: String) -> [[String: String]] {
        // Soal 2 - Ekstrak sebuah teks yang memiliki pola beraturan, utk didapatkan nama, email dan nomor telponnya dalam bentuk list dictionary
        // dari
        // let teks = "Kontak: Budi (budi@example.com, 08123456789), Ani (ani@example.co.id, 08198765432), Joko (joko@invalid, 12345)"
        // menjadi
        //    [
        //        ["nama": "Budi", "email": "budi@example.com", "telepon": "08123456789"],
        //        ["nama": "Ani", "email": "ani@example.co.id", "telepon": "08198765432"]
        //    ]
        // skip email yang tidak valid
        
        // 1. Understand the problem
        // Mengambil dan mengumpulkan 3 string yang berisi nama, email yg valid dan nomor telpon yg valid kedalam dictionary, dan memasukan setiap dictionary yg berisi data ke dalam list array
        // Input: String
        // Output: Array berisi Dictionary
        // Constraint: - / no constraint
        // Edge Cases: string email not valid, and telpon not valid, item < 3
        
        // 2. Algoritma Design
        // Devise Plan
        // - Bersihkan string "Kontak:"
        // - Split berdasarkan "), " -> tanda dalam kurung, koma dan spasi -> Budi (budi@example.com, 08123456789
        // - Lakukan looping untuk setiap data di dalam array teksSplit
        // - Lakukan split utk setiap data di dalam teksSplit
        // - lakukan looping utk data split di dalam data
        // - masukan ke dalam dictionary nama utk data pertama, email utk data ke dua, telepon utk data ke 3 dan cek apakah email valid, hanya simpan ke dict jika email atau telpon valid
        
        // Pseuducode
        // var arrResult: [[String: String]]
        // input.replace("Kontak:", "") -> " Budi (budi@example.com, 08123456789), Ani (ani@example.co.id, 08198765432), Joko (joko@invalid, 12345)"
        // input.replace("(", "") -> " Budi budi@example.com, 08123456789), Ani (ani@example.co.id, 08198765432), Joko joko@invalid 12345)"
        // input.replace(",", "") -> " Budi budi@example.com 08123456789) Ani (ani@example.co.id 08198765432) Joko joko@invalid 12345)"
        // let teksSplit = input.split( ")")
        // for data in teksSplit
        //      let dict: [String: String]
        //      dict["nama"] = data[0].trimmingspace
        //      regexEmailValid = data[1]
        //      regexEmailValid ? dict["email"] = data[1].trimmingspace
        //      dict["telepon"] = data[2] >= 9 ? data[2] : ""
        //      if dict["teleopon"] != "" || dict["email"] != ""
        //          arrResult.append(dict)
        
        // 3. Coding
        guard !teks.isEmpty else { return [] }
        var arrResult: [[String: String]] = []
        
        // bersihkan string: hapus "Kontak:"
        var inputBersih = teks.replacingOccurrences(of: "Kontak:", with: "")
        // bersihkan string dari "("
        inputBersih = inputBersih.replacingOccurrences(of: "(", with: "")
        // bersihkan string dari ","
        inputBersih = inputBersih.replacingOccurrences(of: ",", with: "")
        
        // split berdasarkan " " (spasi)
        let teksSplit = inputBersih.split(separator: ")")
        
        // pola regex validasi email
        let polaEmail = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let regexEmail = try! NSRegularExpression(pattern: polaEmail)
        
        // Loop setiap data di teksSplit
        for data in teksSplit {
            // split data utk memisahkan nama, email dan telelpon -> split berdasarkan spasi
            let bagian = data.split(separator: " ").map { String($0.trimmingCharacters(in: .whitespaces))}
            guard bagian.count >= 3 else { continue }
            let nama = bagian[0]
            let emailKandidat = bagian[1]
            let teleponKandidat = bagian[2]
            
            // Buat dictionary
            var dict: [String: String] = [:]
            dict["nama"] = nama
            
            // Validasi email
            let emailValid = regexEmail.firstMatch(in: emailKandidat, range: NSRange(emailKandidat.startIndex..., in: emailKandidat)) != nil
            dict["email"] = emailValid ? emailKandidat : ""
            
            // Validasi telepon (panjang >= 9, cuma angka)
            let teleponValid = teleponKandidat.count >= 9 && teleponKandidat.allSatisfy { $0.isNumber }
            dict["telepon"] = teleponValid ? teleponKandidat : ""
            
            // Simpan kalau email ATAU telepon valid
            if dict["email"] != "" || dict["telepon"] != "" {
                arrResult.append(dict)
            }
            
        }
        
        return arrResult
        
        // 4. Testing
        // Buat Test Case Untuk Testing fungsi estrak kontrak berdasarkan requirenment
        // Test Case 1:  input => "Kontak: Budi (budi@example.com, 08123456789), Ani (ani@example.co.id, 08198765432), Joko (joko@invalid, 12345)", output =>
        //    [
        //        ["nama": "Budi", "email": "budi@example.com", "telepon": "08123456789"],
        //        ["nama": "Ani", "email": "ani@example.co.id", "telepon": "08198765432"]
        //    ]
        // Test Case 2: input => "Kontak: Budi (budi@example.com, 08123456789), Ani (ani@example.co.id, 08198765432), Joko (joko@gmail.com, 12345)", output =>
        //    [
        //        ["nama": "Budi", "email": "budi@example.com", "telepon": "08123456789"],
        //        ["nama": "Ani", "email": "ani@example.co.id", "telepon": "08198765432"]
        //        ["nama": "Joko", "email": "joko@gmail.com", "telepon": ""]
        //    ]
        // Test Case 3: input => "Kontak: Budi (budi@hallohalo, 08123456789), Ani (ani@example.co.id, 08198765432), Joko (joko@gmail.com, 08923083434)", output =>
        //    [
        //        ["nama": "Budi", "email": "", "telepon": "08123456789"],
        //        ["nama": "Ani", "email": "ani@example.co.id", "telepon": "08198765432"]
        //        ["nama": "Joko", "email": "joko@gmail.com", "telepon": "08923083434"]
        //    ]
        // Test Case 4: input => "Kontak: Budi (budi@yahoo.com, 08123456789), Ani (ani@example.co.id, 08198765432), Joko (joko@gmail.com, 08923083434)", output =>
        //    [
        //        ["nama": "Budi", "email": "budi@yahoo.com", "telepon": "08123456789"],
        //        ["nama": "Ani", "email": "ani@example.co.id", "telepon": "08198765432"]
        //        ["nama": "Joko", "email": "joko@gmail.com", "telepon": "08923083434"]
        //    ]
        // Test Case 5: input => "Kontak 08923083434)", output => []
        // Test Case 6: input => "", output => []
        // 5. Debugging and Optimization
    }
}
