//
//  LessonsView.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 12.02.25.
//

import SwiftUI

struct LessonsView: View {
    let lessons: [Lesson] = [
        Lesson(title: "Введение в Swift", description: "Основы языка Swift", difficulty: .beginner),
        Lesson(title: "Основы UIKit", description: "Создание интерфейсов на UIKit", difficulty: .intermediate),
        Lesson(title: "Архитектура MVVM", description: "Правильная организация кода", difficulty: .advanced)
    ]

    var body: some View {
        List(lessons) { lesson in
            VStack(alignment: .leading) {
                Text(lesson.title)
                    .font(.headline)
                Text(lesson.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("Уровень: \(lesson.difficulty.rawValue)")
                    .font(.caption)
                    .foregroundColor(.blue)
            }
            .padding()
        }
        .navigationTitle("Материал")
    }
}
