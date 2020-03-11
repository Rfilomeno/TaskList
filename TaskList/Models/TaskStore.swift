//
//  TaskStore.swift
//  TaskList
//
//  Created by Rodrigo Filomeno on 11/03/20.
//  Copyright © 2020 Rodrigo Filomeno. All rights reserved.
//
import Combine

class TaskStore: ObservableObject {
    
    @Published var prioritizedTasks = [
        PrioritizedTasks(priority: .high,
                         tasks: [
                         "Fazer o app",
                         "Seguir o tutorial",
                         "Aprender SwiftUI",
                         "Aprender melhores praticas"].map{ Task(name: $0) }),
        PrioritizedTasks(priority: .medium,
                         tasks: [
                        "Praticar seu conhecimento",
                        "Mater o Foco",
                        "Aprender novas abilidades"].map{ Task(name: $0) }),
        PrioritizedTasks(priority: .low,
                         tasks: [
                        "Persistir",
                        "Fazer uma pausa curta"].map{ Task(name: $0) }),
        PrioritizedTasks(priority: .no,
                         tasks: [
                        "Repetir as tarefas"].map{ Task(name: $0) })
    ]
    
    func getIndex(for priority: Task.Priority) -> Int{
        prioritizedTasks.firstIndex { $0.priority == priority }!
    }
}
