//
//  AddHomeScreen.swift
//  SwiftfulSourseControl
//
//  Created by mido mj on 10/29/24.
//

import SwiftUI

struct AddHomeScreen: View {
    var body: some View {
        ZStack{
            Color.brown.ignoresSafeArea()
            VStack {
                Text("Home Screen")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 250)
                    .background(Color.black)
                    .cornerRadius(10)
                    .padding()
            
                Button(action: {
                    
                }, label: {
                    Text("go to next")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal,20)
                        .background(Color.cyan)
                        .cornerRadius(10)
                        .padding()
                })
            }

        }
    }
}

#Preview {
    AddHomeScreen()
}
