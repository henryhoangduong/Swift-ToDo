//
//  ListViewModel.swift
//  ToDo
//
//  Created by mac on 12/12/2567 BE.
//

import Foundation
class ListViewModel {
    @Published var items:[ItemModel] = []
    
    init() {
        getItems()
        
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "String", isComplete: true),
            ItemModel(title: "String", isComplete: false)

        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet:IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from:IndexSet, to:Int){
        items.move(fromOffsets: <#T##IndexSet#>, toOffset: <#T##Int#>)
    }
}
