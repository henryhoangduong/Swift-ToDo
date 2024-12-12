//
//  ListRowView.swift
//  ToDo
//
//  Created by mac on 12/12/2567 BE.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
        }
    }
}

#Preview {
    ListRowView(title: "This is the first item")
}
