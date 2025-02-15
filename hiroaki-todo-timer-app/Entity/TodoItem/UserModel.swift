//
//  UserModel.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import SwiftData
import Foundation

@Model
class User {
    @Attribute(.unique) var id: String
    var name: String
    var email: String
    @Relationship(deleteRule: .cascade) var tasks: [Task] = []

    init(id: String = UUID().uuidString, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
}








