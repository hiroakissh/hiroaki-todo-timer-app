//
//  TaskLogModel.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import SwiftData
import Foundation

@Model
class TaskLog {
    @Attribute(.unique) var id: String
    var timestamp: Date
    var action: String
    var notes: String?

    init(id: String = UUID().uuidString, timestamp: Date, action: String, notes: String? = nil) {
        self.id = id
        self.timestamp = timestamp
        self.action = action
        self.notes = notes
    }
}
