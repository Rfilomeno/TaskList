//
//  Task.swift
//  TaskList
//
//  Created by Rodrigo Filomeno on 11/03/20.
//  Copyright © 2020 Rodrigo Filomeno. All rights reserved.
//
import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var completed = false
}
