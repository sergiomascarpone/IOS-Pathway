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
        Lesson(title: "Тесты и квизы", description: "Проверка знаний с прогрессивной сложностью.", difficulty: .advanced),
        Lesson(title: "Кодовые челленджи", description: "Задачи с реальными кейсами, от простых до сложных.", difficulty: .intermediate),
        Lesson(title: "Раздел с актуальными новостями и трендами", description: "Статьи, обновления iOS SDK, изменения в Swift.", difficulty: .intermediate),
        Lesson(title: "Сообщество и менторство", description: "Форум или чат для обсуждений, поиска решений и общения с экспертами.", difficulty: .intermediate),
        Lesson(title: "Система достижений и мотивации", description: "Награды, уровни, рейтинги, чтобы стимулировать развитие.", difficulty: .intermediate)
    ]

    var body: some View {
        NavigationStack {
            List(lessons) { lesson in
                NavigationLink(destination: LessonDetailView(lesson: lesson)) {
                    VStack(alignment: .leading) {
                        Text(lesson.title)
                            .font(.headline)
                        Text(lesson.description)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding()
                }
            }
            .navigationTitle("Материалы")
        }
    }
}

#Preview {
    LessonsView()
}
