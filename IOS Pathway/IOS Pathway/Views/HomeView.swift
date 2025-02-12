//
//  ContentView.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 12.02.25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Добро пожаловать в")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .offset(x: -40)
                
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
                
                Spacer().frame(height: 50)
                
                NavigationLink(destination: LessonsView()) {
                    Text("🚀 Открыть путь iOS-разработчика")
                        .bold()
                        .frame(maxWidth: .infinity)
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
                .padding(.horizontal, 30)
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
