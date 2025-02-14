//
//  ProfileView.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var userManager = UserManager.shared
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .shadow(radius: 5)
                
                Text(userManager.nickname.isEmpty ? "Имя пользователя" : userManager.nickname)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Уровень: 3 • Достижения: 5 🏆")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 10) {
                    ProfileRow(icon: "checkmark.circle", title: "Пройдено уроков", value: "12")
                    ProfileRow(icon: "doc.text", title: "Пройдено тестов", value: "8")
                    ProfileRow(icon: "trophy.fill", title: "Достижения", value: "5")
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Профиль")
            .onAppear {
                userManager.loadNickname() // Загружаем никнейм при появлении экрана
            }
        }
    }
}

struct ProfileRow: View {
    let icon: String
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
                .frame(width: 24)
            
            Text(title)
                .font(.body)
            
            Spacer()
            
            Text(value)
                .fontWeight(.bold)
        }
        .padding(.horizontal)
    }
}
