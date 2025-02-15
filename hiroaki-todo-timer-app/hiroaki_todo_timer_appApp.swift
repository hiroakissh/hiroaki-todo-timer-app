//
//  hiroaki_todo_timer_appApp.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import SwiftUI
import SwiftData

@main
struct hiroaki_todo_timer_appApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
