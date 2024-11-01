//
//  AddHomeScreen.swift
//  SwiftfulSourseControl
//
//  Created by mido mj on 10/29/24.
//

import SwiftUI

struct AddHomeScreen: View {
    @State var showAlart : Bool = false
    @State var textAleart : String  = ""
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
                    showAlart.toggle()
                    textAleart = "Your are no in home screen dont do anything !!!😨😰😱"
                }, label: {
                    Text("go to next")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal,20)
                        .background(Color.secondary)
                        .cornerRadius(10)
                        .padding()
                })
                .alert(isPresented: $showAlart){
                    GetAleart()
                }
                Button(action: {
                }, label: {
                    Text("go to back")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal,20)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                })

            }
        }

    }
    func GetAleart() -> Alert {
            Alert(title: Text(textAleart), primaryButton:.default(Text("Show")), secondaryButton: .cancel())
    }
}

#Preview {
    AddHomeScreen()
}
