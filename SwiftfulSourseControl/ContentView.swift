//
//  ContentView.swift
//  SwiftfulSourseControl
//
//  Created by mido mj on 10/26/24.
//

import SwiftUI

/*
 Commit MESSAGES
 
 NEW FEATURE:
 [feature] Description of the feature
 
 BUG IN PRODUCION:
 [patch] Description of the patch
 
 BUG NOT IN PRODUCION:
 [BUG] Description of the bug
 
 MUNDANE TASKS:
 [Clean] Description of the changes
 
 RELEASE:
 [release] Description of release

 */

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
