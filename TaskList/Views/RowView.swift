//
//  RowView.swift
//  TaskList
//
//  Created by Rodrigo Filomeno on 11/03/20.
//  Copyright © 2020 Rodrigo Filomeno. All rights reserved.
//

import SwiftUI

struct RowView: View {
   @Binding var task: Task
    let checkmark = Image(systemName: "checkmark")
    var body: some View {
        NavigationLink(destination: TaskEditingView(task: $task)) {
            if task.completed {
                checkmark
            } else {
                checkmark.hidden()
            }
            Text(task.name)
                .strikethrough(task.completed)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant( Task(name: "To do") ) )
    }
}
