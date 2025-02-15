//
//  TodoListViewModel.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import SwiftData

@Observable
@MainActor
final class TodoViewModel {

    private let useCase: TodoUseCase
    var todos: [TodoModel] = []

    init(useCase: TodoUseCase) {
        self.useCase = useCase
        fetchAllTodos()
    }

    /// **タスクを取得して ViewModel にセット**
    func fetchAllTodos() {
        todos = useCase.fetchAllTodos()
    }

    /// **タスクを追加**
    func addTodo(title: String, priority: TaskPriority) {
        useCase.createTodo(title: title, priority: priority)
        fetchAllTodos()
    }

    /// **タスクを更新**
    func updateTodo(_ todo: TodoModel) {
        useCase.updateTodo(todo)
        fetchAllTodos()
    }

    /// **タスクを削除**
    func deleteTodo(_ todo: TodoModel) {
        useCase.deleteTodo(todo)
        fetchAllTodos()
    }
}
