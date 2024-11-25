//
//  loginScreen.swift
//  SwiftfulSourseControl
//
//  Created by mido mj on 11/25/24.
//

import SwiftUI

struct loginScreen: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
//            Gradient(colors: [Color.blue,Color.green])
            Text("Login Screen!")
                .foregroundStyle(.white)
                .font(.title)
                .bold()
        }
    }
}

#Preview {
    loginScreen()
}
