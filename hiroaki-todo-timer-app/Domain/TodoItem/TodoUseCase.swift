//
//  TodoUseCase.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import Foundation

@MainActor
final class TodoUseCase {
    private let repository: TodoRepositoryImpl 

    init(repository: TodoRepositoryImpl) {
        self.repository = repository
    }

    func createTodo(title: String, priority: TaskPriority) {
        let todo = TodoModel(title: title, priority: priority)
        repository.addTodo(todo)
    }

    func updateTodo(_ todo: TodoModel) {
        repository.updateTodo(todo)
    }

    func deleteTodo(_ todo: TodoModel) {
        repository.deleteTodo(todo)
    }
}
