//
//  ReverseArray.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 02/05/25.
//

import Foundation

class ReverseArray {
    
    // Soal, diberikan sebuah string untuk dikembalikan dalam bentuk string yang terbalik semua penempatan characternya
    
    // Understand The Problem
    // Problem statement: Mengubah urutan sebuah string
    // Case: input: "Nunu Graha", output: "aharG unuN"
    // Input: String
    // Output: String
    // Constraint: - no Constraint
    // Edge Cases: -
    
    // Algoritma Design
    // * Devise Plan
    // - buat dua pointer untuk sisi paling kiri dan sisi paling kanan
    // - lakukan looping dari kanan dan kiri ke arah tengah secara bersamaan
    // - tukar tempat antar pointer paling kanan dg pointer paling kiri sampe tidak bersisa atau tersisa satu, jika satu tidak usah ditukar
    
    // * Algoritma pseuducode teks
    // init var left and rigth
    // while left <= right
    //    temp = arrInput[left]
    //    arrInput[left] = arrInput[right]
    //    arrInput[right] = temp
    //    left += 1
    //    right -= 1
    // return arrInput
    
    // Coding
    
    func reverseArrayString(_ str: inout String) -> String {
        guard str.count > 1 else {
            return str
        }
        
        var left = 0
        var right = str.count - 1
        while left < right {
            let leftIndex = str.index(str.startIndex, offsetBy: left)
            let rightIndex = str.index(str.startIndex, offsetBy: right)
            
            // ambil char utk left dan right
            let leftChar = str[leftIndex]
            let rightChar = str[rightIndex]
            
            // tukar dg cara hapus dan insert ke tempat yg telah di hapus
            str.remove(at: leftIndex)
            str.insert(rightChar, at: leftIndex)
            
            // karena struktur string berubah, sesuaikan right indexnya
            let newRightIndex = str.index(str.startIndex, offsetBy: right)
            str.remove(at: newRightIndex)
            str.insert(leftChar, at: newRightIndex)
            
            left += 1
            right -= 1
        }
        return str
    }
    
    
    func reverseArrayStringSwapAt(_ str: inout String) -> String {
        guard str.count > 1 else {
            return str
        }
        
        var chars = Array(str)
        var left = 0
        var right = chars.count - 1
        
        while left < right {
            chars.swapAt(left, right)
            left += 1
            right -= 1
        }
        str = String(chars)
        return str
    }
    
    func reverseArrayStringSwapAtForLoop(_ str: inout String) -> String {
        guard str.count > 1 else {
            return str
        }
        
        var chars = Array(str)
        var left = 0
        var right = chars.count - 1
        
        for _ in 0..<(chars.count/2) {
            chars.swapAt(left, right)
            left += 1
            right -= 1
        }
        str = String(chars)
        return str
    }
    
    func reverseArrayInt(_ nums: inout [Int]) -> [Int] {
        print("cek nums awal: \(nums)")
        guard nums.count > 1 else {
            return nums
        }
        
        var left = 0
        var right = nums.count - 1
        while left < right {
            let temp = nums[left]
            nums[left] = nums[right]
            nums[right] = temp
            left += 1
            right -= 1
        }
        print("cek nums result: \(nums)")
        return nums
    }
    
    
    // Testing
    // 1. Test Case => input: "Nunu Graha", output: "aharG unuN"
    // 2. Test Case => input: "nunu", output: "unun"
    // 3. Test Case => input: "n", output: "n"
    // 4. Test Case => input: "", output: ""
}
