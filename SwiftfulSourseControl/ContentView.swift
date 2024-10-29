//
//  ContentView.swift
//  SwiftfulSourseControl
//
//  Created by mido mj on 10/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundStyle(.tint)
            Button("click me") {
                
            }
            Text("Swift Ui")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
