//
//  TodoUseCase.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import Foundation

class TodoUseCase {
    private let repository: TodoRepository

    init(repository: TodoRepository) {
        self.repository = repository
    }

    func getTodos() -> [TodoModel] {
        return repository.fetchAllTodos()
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
