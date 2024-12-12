//
//  ItemModel.swift
//  ToDo
//
//  Created by mac on 12/12/2567 BE.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isComplete: Bool
}
