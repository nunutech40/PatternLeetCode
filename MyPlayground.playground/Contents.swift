import Foundation


var nama = "Rizka Fajar Nugrahas"
// get first char
print("first char: \(nama.first!)")

// get last char
print("last char: \(nama.last!)")

// get spesific char from string by index
var strIndex4 = nama.index(nama.startIndex, offsetBy: 3)
print("char in nama index 4: \(nama[strIndex4])")
var strIndexGetJ = nama.index(nama.startIndex, offsetBy: 8)
print("get char J from nama: \(nama[strIndexGetJ])")

// print every single char
for char in nama {
  print(char)
}

// get total char in variable string
print("total char: \(nama.count)")

// cek apakah char dalam string is empty
print("is it empty?: \(nama.isEmpty)")

nama.removeLast()
print("after remove last: \(nama)")

nama.append(contentsOf: " Ganteng")
print("after append to last: \(nama)")

// get substring
let indeksAwal = nama.index(nama.startIndex, offsetBy: 6)
print("cek indeksAwal: \(indeksAwal)")
let indeksAkhir = nama.index(nama.startIndex, offsetBy: 11)
print("cek indeksAkhir: \(indeksAkhir)")
let substring = nama[indeksAwal..<indeksAkhir]
print("ccek substring: \(substring)")
let newName = nama.replacingOccurrences(of: "Ganteng", with: "Keren")
print("\(newName)")

// memiskahkan string menjadi array, dengan tanda pemisah
let arrMyName = nama.split(separator: " ")
print("cek array myName: \(arrMyName)")
// get first index form split
let firstName = arrMyName[0]    
let lastName = arrMyName[2]
print("first name: \(firstName)")
print("last name: \(lastName)")

let strMyName = arrMyName.joined(separator: " ")
print("cek string myName: \(strMyName)")



// manipulasi Regex
let teks = "Kontak: budi@example.com, ani@example.com"
let pola = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}" // detect pola [budi][@][gmail][.][com] -> masing2 substring dibuatkan regexnya [A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}
let regex = try NSRegularExpression(pattern: pola)
let hasil = regex.matches(in: teks, range: NSRange(teks.startIndex..., in: teks))
// hasilnya range index {8, 16} dan {26, 15}
print("cek hasil: \(hasil)")
for match in hasil {
    let email = (teks as NSString).substring(with: match.range)
    print("cek email: \(email)") // dapet detect email dari substringnya: budi@example.com dan ani@example.com
    
}

// hitung vokal
let vokal = nama.lowercased().filter { "aiueo".contains($0) }
print("cek vokal value: \(vokal)")
print("banyaknya vokal dalam nunu nugraha: \(vokal.count)")


