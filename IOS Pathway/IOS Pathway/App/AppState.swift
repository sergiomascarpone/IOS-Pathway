//
//  AppState.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 14.02.25.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var isAuthenticated: Bool = false

    init() {
        // Проверяем, есть ли сохранённый никнейм (или другой параметр аутентификации)
        if let _ = UserDefaults.standard.string(forKey: "userNickname") {
            isAuthenticated = true
        }
    }
}
