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
    @State var text : String = "Swift Ui"
    @State var ImageColor  = Color.black

    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 100)
                .font(.largeTitle)
                .foregroundStyle(ImageColor)
            
            Button("Subscribe") {
                ImageColor = Color.red
                text = "things you to subscribe"
            }
            .buttonStyle(.borderedProminent)
            .tint(ImageColor)
            .font(.title2)
            
            Button("click me") {
                ImageColor = Color.blue
                text = "Hi Welcome To My World"
            }
            .buttonStyle(.bordered)
            .tint(ImageColor)
            .font(.title2)
            
            Text(text)
                .font(.title)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .background(ImageColor)
                .cornerRadius(10)
            Text("text")
                .font(.title)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .background(ImageColor)
                .cornerRadius(10)
    
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
