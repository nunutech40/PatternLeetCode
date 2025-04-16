//
//  ContentView.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var model = ArrayAndHashing()
    @StateObject private var binarySearch = BinarySearch()
    @StateObject private var maxSubArray = SlidingWindow()
    @StateObject private var validParentheses = StackPattern()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Two Sum Result: \(model.result.map(String.init).joined(separator: ", "))")
            Text("Binary Search Result: \(binarySearch.result)")
            Text("Sliding Window: \(maxSubArray.result)")
            Text("Stack -> Valid Parentheses: \(validParentheses.result)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
