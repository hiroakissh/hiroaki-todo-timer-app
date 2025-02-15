//
//  TaskAction.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

enum TaskAction: CaseIterable, Codable  {
    case created
    case started
    case paused
    case completed
    case resumed
    case deleted

    var title: String {
        switch self {
        case .created:
            return "created"
        case .started:
            return "started"
        case .paused:
            return "paused"
        case .completed:
            return "completed"
        case .resumed:
            return "resumed"
        case .deleted:
            return "deleted"
        }
    }
}
