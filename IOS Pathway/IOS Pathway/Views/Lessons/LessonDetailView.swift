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
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
//                Text(lesson.title)
//                    .font(.largeTitle)
//                    .bold()
                
                if let content = lessonContent[lesson.title] {
                    ForEach(content, id: \.self) { section in
                        Text(section.title)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                        
                        if section.title.contains("🔗") {
                            // Если это раздел со ссылками, используем Link
                            ForEach(section.description.components(separatedBy: "\n"), id: \.self) { line in
                                if let url = URL(string: line.trimmingCharacters(in: .whitespaces)) {
                                    Link("🔗 \(line)", destination: url)
                                        .foregroundColor(.blue)
                                        .underline()
                                } else {
                                    Text(line)
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
        .navigationTitle(lesson.title)
    }
}
