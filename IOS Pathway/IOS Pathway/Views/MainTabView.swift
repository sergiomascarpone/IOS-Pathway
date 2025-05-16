//
//  MainTabView.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        TabView {
            LessonsView()
                .tabItem {
                    Label("Материал", systemImage: "book.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person.fill")
                }
        }
        .applyBackground() //Применяем единый фон
    }
}
