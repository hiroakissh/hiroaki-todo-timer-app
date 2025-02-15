//
//  TaskStatus.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

enum TaskStatus: CaseIterable, Codable {
    case notStarted
    case inProgress
    case completed

    var title: String {
        switch self {
        case .notStarted:
            return "notStarted"
        case .inProgress:
            return "inProgress"
        case .completed:
            return "completed"
        }
    }
}
