//
//  ContentView.swift
//  PatternLeetCode
//
//  Created by Nunu Nugraha on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var model = ArrayAndHashing()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Two Sum Result: \(model.result.map(String.init).joined(separator: ", "))")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
