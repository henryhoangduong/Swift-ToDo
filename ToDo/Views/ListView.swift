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
        ItemModel(title: "This is the second title", isComplete: false),
        ItemModel(title: "This is the third title", isComplete: true)

    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(items) {
                    item in
                    ListRowView(item:item)
                }
                .onDelete(perform: deleteItem)
                .onMove(perform: moveItem)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("To do list 📝")
            .navigationBarItems(leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
        }
    }
    func deleteItem(indexSet:IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from:IndexSet,to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

#Preview {
    ListView()
}
