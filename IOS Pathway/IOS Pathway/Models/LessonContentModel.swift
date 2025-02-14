//
//  LessonContentModel.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import Foundation

struct LessonContent {
    let title: String
    let sections: [LessonSection]
}

struct LessonSection: Hashable {
    let title: String
    let description: String
}

