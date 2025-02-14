//
//  NicknameView.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import SwiftUI

struct NicknameView: View {
    @State private var nickname: String = ""
    @State private var isNextActive = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
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
            
            NavigationLink(destination: RegistrationView(), isActive: $isNextActive) {
                EmptyView()
            }
            
            Spacer()
        }
        .padding()
    }
    
    private func saveNickname() {
        guard !nickname.isEmpty else { return }
        UserDefaults.standard.set(nickname, forKey: "userNickname")
        isNextActive = true  // Активируем переход
    }
}
