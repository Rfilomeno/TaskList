//
//  TaskEditingView.swift
//  TaskList
//
//  Created by Rodrigo Filomeno on 11/03/20.
//  Copyright © 2020 Rodrigo Filomeno. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task: Task
    var body: some View {
        Form {
            TextField("Name", text: $task.name)
            Toggle("Completed", isOn: $task.completed)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant(Task(name: "To Do")))
    }
}
