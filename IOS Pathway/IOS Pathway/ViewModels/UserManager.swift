//
//  UserManager.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import SwiftUI

class UserManager: ObservableObject {
    static let shared = UserManager() // Singleton
    
    @Published var nickname: String {
        didSet { UserDefaults.standard.set(nickname, forKey: "nickname") }
    }
    
    private init() {
        self.nickname = UserDefaults.standard.string(forKey: "nickname") ?? ""
    }
}
