//
//  AddView.swift
//  ToDo
//
//  Created by mac on 12/12/2567 BE.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        NavigationView {
            ScrollView {
                TextField("Type something here ....", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                Button(action: {}, label: {
                    Text("Save".uppercased())
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white).background(Color.accentColor)
                        .cornerRadius(15)

                })
            }.padding(14)
                .navigationTitle("Add an item")
        }
    }
}

#Preview {
    AddView()
}
