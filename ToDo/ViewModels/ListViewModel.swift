//
//  ListViewModel.swift
//  ToDo
//
//  Created by mac on 12/12/2567 BE.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []

    init() {
        getItems()
    }

    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first title", isComplete: true),
            ItemModel(title: "This is the seond title   ", isComplete: false),
        ]
        items.append(contentsOf: newItems)
    }

    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }

    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }

    func addItem(title: String) {
        items.append(ItemModel(title: title, isComplete: false))
    }
}
