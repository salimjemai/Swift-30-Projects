//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Salim Jemai on 11/6/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {        
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                MainView()
            }
        }
    }
}
