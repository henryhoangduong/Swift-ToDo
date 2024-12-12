//
//  ListView.swift
//  ToDo
//
//  Created by mac on 12/12/2567 BE.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {
        NavigationView {
            List {
                ForEach(listViewModel.items) {
                    item in
                    ListRowView(item: item)
                }
                .onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("To do list 📝")
            .navigationBarItems(leading: EditButton(),
                                trailing: NavigationLink("Add", destination: AddView()))
        }
    }
}

#Preview {
    ListView().environmentObject(ListViewModel())
}
