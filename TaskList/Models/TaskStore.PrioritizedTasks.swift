//
//  TaskStore.PrioritizedTasks.swift
//  TaskList
//
//  Created by Rodrigo Filomeno on 11/03/20.
//  Copyright © 2020 Rodrigo Filomeno. All rights reserved.
//

extension TaskStore {
    struct PrioritizedTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PrioritizedTasks: Identifiable {
    var id: Task.Priority { priority }
}
