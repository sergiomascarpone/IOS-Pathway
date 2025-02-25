//
//  NicknameView.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import SwiftUI

struct NicknameView: View {
    @State private var nickname: String = ""
    @Binding var isAuthenticated: Bool // Связь с родительским экраном
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.black.opacity(0.4)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Text("Придумай никнейм")
                    .font(.title)
                    .fontWeight(.bold)

                TextField("Введите ник", text: $nickname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: saveNickname) {
                    Text("Продолжить")
                        .bold()
                        .frame(maxWidth: 250)
                        .padding()
                        .background(nickname.isEmpty ? Color.gray : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .disabled(nickname.isEmpty)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(16)
            .shadow(radius: 5)
            .frame(maxWidth: 300)
        }
    }

    private func saveNickname() {
        guard !nickname.isEmpty else { return }
        UserDefaults.standard.set(nickname, forKey: "userNickname")
        isAuthenticated = true // После ввода никнейма переходим в MainTabView
        presentationMode.wrappedValue.dismiss()
    }
}

