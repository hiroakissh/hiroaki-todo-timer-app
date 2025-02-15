//
//  DataManager.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import Foundation
import SwiftData

@MainActor
final class DataManager {
    static let shared = DataManager()

    let container: ModelContainer
    var context: ModelContext {
        container.mainContext
    }

    private init() {
        do {
            let schema = Schema([TodoModel.self, TaskLogModel.self])
            let configuration = ModelConfiguration(isStoredInMemoryOnly: false)
            self.container = try ModelContainer(for: schema, configurations: [configuration])
        } catch {
            fatalError("Failed to initialize SwiftData ModelContainer: \(error)")
        }
    }
}
