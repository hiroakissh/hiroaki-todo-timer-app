//
//  TimeLogModel.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import SwiftData
import Foundation

@Model
class TimeLogModel {
    @Attribute(.unique) var id: String
    var startTime: Date
    var endTime: Date?
    var durationMinutes: Int = 0

    init(id: String = UUID().uuidString, startTime: Date, endTime: Date? = nil, durationMinutes: Int = 0) {
        self.id = id
        self.startTime = startTime
        self.endTime = endTime
        self.durationMinutes = durationMinutes
    }
}
