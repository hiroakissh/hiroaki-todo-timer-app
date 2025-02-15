//
//  Task.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import SwiftData
import Foundation

@Model
class Task {
    @Attribute(.unique) var id: String
    var title: String
    var description: String?
    var startDate: Date?
    var dueDate: Date?
    var priority: String // "low", "medium", "high"
    var status: String // "未着手", "進行中", "完了"

    @Relationship(deleteRule: .cascade) var timeLogs: [TimeLog] = []
    @Relationship(deleteRule: .cascade) var attachments: [Attachment] = []
    @Relationship(deleteRule: .cascade) var logs: [TaskLog] = []

    init(id: String = UUID().uuidString, title: String, description: String? = nil, startDate: Date? = nil, dueDate: Date? = nil, priority: String = "medium", status: String = "未着手") {
        self.id = id
        self.title = title
        self.description = description
        self.startDate = startDate
        self.dueDate = dueDate
        self.priority = priority
        self.status = status
    }
}
