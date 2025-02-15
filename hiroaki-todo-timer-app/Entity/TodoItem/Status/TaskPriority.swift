//
//  TaskPriority.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

enum TaskPriority: CaseIterable, Codable {
    case low
    case medium
    case high

    var title: String {
        switch self {
        case .low:
            return "low"
        case .medium:
            return "medium"
        case .high:
            return "high"
        }
    }
}
