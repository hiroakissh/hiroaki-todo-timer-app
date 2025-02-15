//
//  TodoRepository.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import Foundation

protocol TodoRepository {
    func fetchAllTodos() -> [TodoModel]
    func addTodo(_ todo: TodoModel)
    func updateTodo(_ todo: TodoModel)
    func deleteTodo(_ todo: TodoModel)
}

