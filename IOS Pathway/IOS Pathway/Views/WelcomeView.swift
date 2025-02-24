//
//  ContentView.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 12.02.25.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showRegistration = false
    @State private var NicknameView = false
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    Text("Добро пожаловать в")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                    
                    Text("iOS Pathway!")
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [.blue, .purple]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .shadow(color: .gray.opacity(0.5), radius: 5, x: 2, y: 2)
                        .padding(.bottom, 10)
                    
                    Text("Начни свой путь в iOS-разработке с интерактивными уроками, тестами и челленджами.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                    
                    Spacer()
                    
                    Button(action: {
                        showRegistration = true
                    }) {
                        Text("🚀 Открыть путь iOS-разработчика")
                            .bold()
                            .frame(width: min(geometry.size.width * 0.8, 300)) // Ограничение ширины кнопки
                            .padding()
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [.blue, .purple]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .foregroundColor(.white)
                            .cornerRadius(12)
                            .shadow(radius: 5)
                    }
                    .padding(.bottom, 30)
                    .navigationDestination(isPresented: $showRegistration) {
                        RegistrationView()
                    }
                    
                    Spacer()
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
            .applyBackground() // Добавляем фон
        }
    }
}

#Preview {
    WelcomeView()
}
