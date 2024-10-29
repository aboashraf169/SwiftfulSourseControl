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
            Text("Home Screen")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 250)
                .back ground(Color.black)
                .cornerRadius(10)
                .padding()

        }
    }
}

#Preview {
    AddHomeScreen()
}
