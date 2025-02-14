//
//  RegistrationView.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var showNicknameView = false
    @State private var isAuthenticated = false // Добавляем переменную состояния
    @EnvironmentObject var appState: AppState // Используем объект состояния

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Регистрация в")
                    .font(.largeTitle)
                    .fontWeight(.bold)

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

                Text("Создай аккаунт, чтобы получить доступ ко всем урокам, тестам и челленджам.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)

                Spacer()

                VStack(spacing: 14) {
                    RegistrationButton(
                        title: "Войти с Apple",
                        icon: "applelogo",
                        backgroundColor: .black
                    ) {
                        authenticate()
                    }

                    RegistrationButton(
                        title: "Войти с Google",
                        icon: "globe",
                        backgroundColor: .red
                    ) {
                        authenticate()
                    }

                    RegistrationButton(
                        title: "Войти с Email",
                        icon: "envelope",
                        backgroundColor: .blue
                    ) {
                        authenticate()
                    }
                }
                .padding(.horizontal, 20)
                .sheet(isPresented: $showNicknameView) {
                    NicknameView(isAuthenticated: $isAuthenticated) // Передаем флаг аутентификации
                }

                Spacer()
                    .padding(.bottom, 40)

                NavigationLink(destination: MainTabView(), isActive: $isAuthenticated) {
                    EmptyView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
        }
    }

    private func authenticate() {
        showNicknameView = true
    }

    private func completeRegistration(nickname: String) {
        UserManager.shared.saveNickname(nickname)
        appState.isAuthenticated = true
    }
}


struct RegistrationButton: View {
    let title: String
    let icon: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: icon)
                    .font(.title3)
                    .frame(width: 24)
                
                Text(title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .foregroundColor(.white)
            .background(backgroundColor)
            .cornerRadius(12)
            .shadow(radius: 5)
        }
        .frame(maxWidth: 300)
    }
}

#Preview {
    RegistrationView()
}
