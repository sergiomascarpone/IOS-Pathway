//
//  LessonDetailView.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 13.02.25.
//

import SwiftUI

struct LessonDetailView: View {
    let lesson: Lesson
    
    var body: some View {
        ZStack {
            Color.clear.applyBackground() // Фон на весь экран
            
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    if let content = lessonContent[lesson.title] {
                        ForEach(content, id: \.self) { section in
                            if section.title.contains("🔗") {
                                let parsedLinks = parseLinks(from: section.description)
                                ForEach(parsedLinks, id: \.id) { item in
                                    if let url = item.url {
                                        Link("🔗 \(item.text)", destination: url)
                                            .foregroundColor(.blue)
                                            .underline()
                                    } else {
                                        Text(item.text)
                                    }
                                }
                            } else {
                                Text(section.description)
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
        .navigationTitle(lesson.title)
    }
    
    // Структура для хранения текста и ссылки!!
    struct LinkItem: Identifiable {
        let id = UUID()
        let text: String
        let url: URL?
    }
    
    //Функция для парсинга Markdown-ссылок!!
    private func parseLinks(from text: String) -> [LinkItem] {
        let regex = try! NSRegularExpression(pattern: "\\[(.*?)\\]\\((.*?)\\)")
        let matches = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
        
        var results: [LinkItem] = []
        //        var lastRangeEnd = text.startIndex
        
        for match in matches {
            if let textRange = Range(match.range(at: 1), in: text),
               let urlRange = Range(match.range(at: 2), in: text),
               let url = URL(string: String(text[urlRange])) {
                
                //Добавляем саму ссылку!!
                results.append(LinkItem(text: String(text[textRange]), url: url))
            }
        }
        return results
    }
}
