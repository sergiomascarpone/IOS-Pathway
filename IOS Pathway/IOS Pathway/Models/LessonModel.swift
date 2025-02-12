//
//  LessonModel.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 12.02.25.
//

import Foundation

struct Lesson: Identifiable {
    let id: UUID = UUID()
    let title: String
    let description: String
    let difficulty: DifficultyLevel
}

enum DifficultyLevel: String {
    case beginner = "Beginner"
    case intermediate = "Intermediate"
    case advanced = "Advanced"
}
