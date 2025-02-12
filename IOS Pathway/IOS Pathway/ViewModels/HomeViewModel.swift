//
//  HomeViewModel.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 12.02.25.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var welcomeMessage: String = "Добро пожаловать в iOS Pathway!"
}
