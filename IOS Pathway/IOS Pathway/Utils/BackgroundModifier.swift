//
//  BackgroundModifier.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 24.02.25.
//

import SwiftUI

//struct BackgroundModifier: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .background(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.blue.opacity(0.2), Color.purple.opacity(0.2)]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
//                .ignoresSafeArea()
//            )
//    }
//}

extension View {
    func applyBackground() -> some View {
        self.background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(hex: "#F8E8EE"), //Нежно-розовый
                    Color(hex: "#E6F7FF"), //Светло-голубой
                    Color(hex: "#FAF3E0")  //Тёплый бежевый
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
        )
    }
}

//Расширение для работы с HEX-цветами
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}
