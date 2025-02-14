//
//  lessonContent.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import SwiftUI

let lessonContent: [String: [LessonSection]] = [
    "Введение в Swift": [
        LessonSection(title: "📚 Что такое Swift?", description: "Swift — мощный язык программирования от Apple для iOS, macOS и других платформ."),
        LessonSection(title: "🔗 Полезные ссылки:", description: """
        - [Официальная документация](https://swift.org/documentation/)
        - [Swift Playgrounds](https://apps.apple.com/us/app/swift-playgrounds/id908519492)
        """)
    ],
    
    "Основы UIKit": [
        LessonSection(title: "📌 Что такое UIKit?", description: "UIKit — это фреймворк для создания интерфейсов в iOS-приложениях."),
        LessonSection(title: "📌 Основные компоненты UIKit:", description: "UIView, UILabel, UIButton, UITableView и другие."),
        LessonSection(title: "🔗 Полезные ссылки:", description: """
        - [Документация UIKit](https://developer.apple.com/documentation/uikit/)
        - [Обучение UIKit](https://developer.apple.com/videos/play/wwdc2019/216/)
        """)
    ],

    "Тесты и квизы": [
        LessonSection(title: "📝 Почему важны тесты?", description: "Тестирование помогает закрепить знания и улучшить понимание материала."),
        LessonSection(title: "📌 Виды тестов:", description: "Множественный выбор, кодовые задания, практические вопросы."),
        LessonSection(title: "🔗 Полезные ссылки:", description: """
        - [Система тестов в Xcode](https://developer.apple.com/documentation/xctest)
        - [Как писать тесты](https://developer.apple.com/documentation/testing)
        """)
    ],

    "Кодовые челленджи": [
        LessonSection(title: "💡 Что такое кодовые челленджи?", description: "Это задачи, которые помогают применять теорию на практике."),
        LessonSection(title: "📌 Где искать задачи?", description: "LeetCode, CodeWars, Swift Playgrounds."),
        LessonSection(title: "🔗 Полезные ссылки:", description: """
        - [CodeWars Swift](https://www.codewars.com/)
        - [LeetCode Swift](https://leetcode.com/)
        """)
    ],

    "Раздел с актуальными новостями и трендами": [
        LessonSection(title: "📢 Где следить за новостями?", description: "Apple Developer, Swift Evolution, блоги разработчиков."),
        LessonSection(title: "🔗 Полезные ссылки:", description: """
        - [Swift Evolution](https://github.com/apple/swift-evolution)
        - [Новости Apple](https://developer.apple.com/news/)
        """)
    ],

    "Сообщество и менторство": [
        LessonSection(title: "👨‍💻 Где найти менторов?", description: "Swift Forums, Slack-чаты, Telegram-группы."),
        LessonSection(title: "🔗 Полезные ссылки:", description: """
        - [Swift Forums](https://forums.swift.org/)
        - [iOS-разработчики в Telegram](https://t.me/iosdev)
        """)
    ],

    "Система достижений и мотивации": [
        LessonSection(title: "🏆 Зачем нужны награды?", description: "Достижения помогают отслеживать прогресс и мотивируют к обучению."),
        LessonSection(title: "📌 Виды достижений:", description: "За завершение уроков, тестов, кодовых челленджей."),
        LessonSection(title: "🔗 Полезные ссылки:", description: """
        - [Геймификация обучения](https://en.wikipedia.org/wiki/Gamification)
        """)
    ]
]
