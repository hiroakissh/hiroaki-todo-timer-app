//
//  AttachmentModel.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import SwiftData
import Foundation

@Model
class Attachment {
    @Attribute(.unique) var id: String
    var fileURL: String

    init(id: String = UUID().uuidString, fileURL: String) {
        self.id = id
        self.fileURL = fileURL
    }
}
