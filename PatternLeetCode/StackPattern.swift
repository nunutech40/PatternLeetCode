//
//  StackPattern.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 16/04/25.
//

import Foundation

class StackPattern: ObservableObject {
    @Published var result: String = ""
    
    init() {
        result = isValidParentheses( "(" ) ? "Valid" : "Invalid"
    }
    
    /// Menvalidasi apakah sebuah string merupakan parentheses atau termasuk tanda kurung menggunakan stack
    /// - Parameters:
    ///  - s: A String containing parentheses character ()[]{}
    /// - Returns: True jika parentheses valid, false jika bukan parentheses
    func isValidParentheses(_ s: String) -> Bool {
        // Step 1: Understanding the problem
        // - Input: String s containing character ()[]{}
        // - Output: Boolean indicating if parentheses is valid
        // - Constraints: String only contains [](){}, length > 1
        // - Edge cases: s = "", s = "(", s = "([)]"
        
        // Step 2: Devise a plan / Algoritma
        // - Siapkan dua tempat, sebuah stack(string array) dan sebuah hashmap utk menyimpan parentheses yang benar [')' : '(',']' : '[', '}' : '{']
        // - Validasi jika string lebih dari 1
        // - loop string utk dapetin setiap char
        //  - cek setiap char, jika merupakan pembuka '({[', masukan ke dalam stack
        //  - jika merupakan penutup ')}]' maka
        //      - cek apakah ada di hashmap, jika tidak ada return false
        // - default return kondisi stack, apakah kosong atau ada isinya, jika kosong, maka merupakan valid parentheses (true), jika tidak kosong, berarti gak nemu kurung tutupnya, jadi stacknya gak di hapus, false
        
        // Step 3: Pseducode
        // initialize stack = empty array
        // for each char in string
        //      if char is opening bracket:
        //          push to stack
        //      else if char is closing bracket:
        //          if stack is empty: return false
        //          top = pop from stack
        //          if top != match char, return false
        // return stack is empty
        
        var stack: [Character] = []
        let matching: [Character : Character] = [")":"(", "]":"[", "}":"{"]
        
        for char in s {
            if "({[".contains(char) {
                stack.append(char)
            } else if ")}]".contains(char) {
                guard !stack.isEmpty else { return false }
                let top = stack.removeLast()
                if top != matching[char]! {
                    return false
                }
            }
        }
        
        // Step 5: Test and Refine
        // - Test Case 1: s = "(){}[]" -> Expected: true (stack empty at end)
        // - Test Case 2: s = "(]" -> Expected: false (mismatch)
        // - Test Case 3: s = "([)]" -> Expected: false (wrong order)
        // - Test Case 4: s = "(" -> Expected: false (stack not empty at end)
        // - Explanation of Return:
        //   - return stack.isEmpty checks if all opening brackets were matched
        //   - If stack is empty, all brackets were closed -> true (valid parentheses)
        //   - If stack is not empty, some opening brackets lack closing pairs -> false
        // - Complexity: O(n) time, O(n) space
        
        return stack.isEmpty
    }
}

