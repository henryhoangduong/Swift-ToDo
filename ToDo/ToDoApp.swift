//
//  ToDoApp.swift
//  ToDo
//
//  Created by mac on 11/12/2567 BE.
//

import SwiftUI

@main
struct ToDoApp: App {
    @StateObject var listViewModel: ListViewModel = .init()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
