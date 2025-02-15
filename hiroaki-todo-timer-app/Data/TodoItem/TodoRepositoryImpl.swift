//
//  TodoRepositoryImpl.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import Foundation
import SwiftData

@MainActor
final class TodoRepositoryImpl: TodoRepository {

    private let context: ModelContext

    /// 初期化時に `ModelContext` を受け取る
    init() {
        self.context = DataManager.shared.context
    }

    /// **すべてのタスクを取得**
    func fetchAllTodos() -> [TodoModel] {
        let fetchDescriptor = FetchDescriptor<TodoModel>()
        return (try? context.fetch(fetchDescriptor)) ?? []
    }

    /// **タスクの追加**
    func addTodo(_ todo: TodoModel) {
        context.insert(todo)
        try? context.save()
    }

    /// **タスクの更新**
    func updateTodo(_ todo: TodoModel) {
        let todoId = todo.id // #Predicateのクロージャ内でオブジェクトモデルを参照できない https://stackoverflow.com/questions/76632340/how-to-resolve-compiler-error-creating-a-swiftdata-predicate/76632341#76632341
        let fetchDescriptor = FetchDescriptor<TodoModel>(predicate: #Predicate { $0.id == todoId })
        guard let existingTodo = try? context.fetch(fetchDescriptor).first else { return }

        existingTodo.title = todo.title
        existingTodo.priority = todo.priority
        existingTodo.status = todo.status

        try? context.save()
    }

    /// **タスクの削除**
    func deleteTodo(_ todo: TodoModel) {
        let todoId = todo.id // #Predicateのクロージャ内でオブジェクトモデルを参照できない https://stackoverflow.com/questions/76632340/how-to-resolve-compiler-error-creating-a-swiftdata-predicate/76632341#76632341
        let fetchDescriptor = FetchDescriptor<TodoModel>(predicate: #Predicate { $0.id as String == todoId })
        guard let existingTodo = try? context.fetch(fetchDescriptor).first else { return }

        context.delete(existingTodo)
        try? context.save()
    }
}
