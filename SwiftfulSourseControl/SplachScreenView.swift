//
//  SplachScreenView.swift
//  SwiftfulSourseControl
//
//  Created by mido mj on 11/23/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var logoScale: CGFloat = 0.6
    @State private var logoOpacity: Double = 0.0
    @State private var navigateToHome = false

    var body: some View {
        if navigateToHome {
            AddHomeScreen() // الشاشة الرئيسية
        } else {
            ZStack {
                // خلفية متدرجة
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue, Color.green]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack {
                    // عرض اللوجو
                    Image("logo") // استبدل باسم ملف اللوجو
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .scaleEffect(logoScale)
                        .opacity(logoOpacity)
                        .clipShape(Circle())
                        .onAppear {
                            animateLogo()
                        }

                    // النص أسفل اللوجو
                    Text("Care First")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .opacity(logoOpacity)
                        .animation(.easeInOut(duration: 1.5).delay(0.5), value: logoOpacity)
                }
            }
            .onAppear {
                goToHomeScreen()
            }
        }
    }

    // تحريك اللوجو
    func animateLogo() {
        withAnimation(.easeInOut(duration: 1.5)) {
            logoScale = 1.0
            logoOpacity = 1.0
        }
    }

    // الانتقال للشاشة الرئيسية
    func goToHomeScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 500) {
            withAnimation {
                navigateToHome = true
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
