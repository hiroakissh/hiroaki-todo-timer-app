//
//  TodoRepository.swift
//  hiroaki-todo-timer-app
//
//  Created by HiroakiSaito on 2025/02/15.
//

import Foundation

protocol TodoRepository {
    func fetchAllTodos() -> [Task]
    func addTodo(_ todo: Task)
    func updateTodo(_ todo: Task)
    func deleteTodo(_ todo: Task)
}

