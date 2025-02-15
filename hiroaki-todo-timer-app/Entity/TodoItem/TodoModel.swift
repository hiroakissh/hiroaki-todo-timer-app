//
//  TodoModel.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import SwiftData
import Foundation

@Model
class TodoModel {
    @Attribute(.unique) var id: String
    var title: String
    var descriptionMsg: String?
    var startDate: Date?
    var dueDate: Date?
    var priority: TaskPriority
    var status: TaskStatus

    @Relationship(deleteRule: .cascade) var timeLogs: [TimeLogModel] = []
    @Relationship(deleteRule: .cascade) var attachments: [AttachmentModel] = []
    @Relationship(deleteRule: .cascade) var logs: [TaskLogModel] = []

    init(id: String = UUID().uuidString, title: String, descriptionMsg: String? = nil, startDate: Date? = nil, dueDate: Date? = nil, priority: TaskPriority = .medium, status: TaskStatus = .notStarted) {
        self.id = id
        self.title = title
        self.descriptionMsg = descriptionMsg
        self.startDate = startDate
        self.dueDate = dueDate
        self.priority = priority
        self.status = status
    }
}
