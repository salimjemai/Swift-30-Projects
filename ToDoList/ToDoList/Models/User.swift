//
//  User.swift
//  ToDoList
//
//  Created by Salim Jemai on 11/6/23.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval  // this is the time when they joined the app
}
