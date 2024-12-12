//
//  ListView.swift
//  ToDo
//
//  Created by mac on 12/12/2567 BE.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title", isComplete: true),
        ItemModel(title: "This is the second title", isComplete: true),
        ItemModel(title: "This is the third title", isComplete: true)

    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(items) {
                    item in Text("Hi")
                    // ListRowView()
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("To do list 📝")
            .navigationBarItems(leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
        }
    }
}

#Preview {
    ListView()
}
