//
//  UserManager.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import Foundation

class UserManager: ObservableObject {
    static let shared = UserManager()
    
    @Published var nickname: String = ""
    
    private init() {
        loadNickname()
    }
    
    func saveNickname(_ name: String) {
        nickname = name
        UserDefaults.standard.set(name, forKey: "userNickname")
    }
    
    func loadNickname() {
        nickname = UserDefaults.standard.string(forKey: "userNickname") ?? ""
    }
}
