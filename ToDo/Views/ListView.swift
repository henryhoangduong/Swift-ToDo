//
//  ListView.swift
//  ToDo
//
//  Created by mac on 12/12/2567 BE.
//

import SwiftUI

struct ListView: View {
    @State var item: [String] = ["this is the first title", "this is the second title", "this the third title"]
    var body: some View {
        NavigationView {
            List {
                ForEach(item, id: \.self) {
                    item in ListRowView(title: item)
                }
            }.listStyle(PlainListStyle())
                .navigationTitle("To do list 📝").navigationBarItems(leading: EditButton(),
                                                                    trailing: NavigationLink("Add", destination: AddView()))
        }
    }
}

#Preview {
    ListView()
}
