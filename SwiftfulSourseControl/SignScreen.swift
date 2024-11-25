//
//  SignScreen.swift
//  SwiftfulSourseControl
//
//  Created by mido mj on 11/25/24.
//

import SwiftUI

struct SignScreen: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.blue,Color.green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(edges: .all)
            Text("Sign Screen!")
                .foregroundStyle(.white)
                .font(.title)
                .bold()
    }
    }
}

#Preview {
    SignScreen()
}
