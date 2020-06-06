//
//  AddRowExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/04/23.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct AddRowExample: View {
    @State var mfgs:[String] = []
    @State var new = ""
    var body: some View {
        VStack(alignment: .leading) {
            EditButton()
            Text("Add new manufactuaring")
                .font(.footnote)
                .foregroundColor(.secondary)
            HStack {
                TextField("Input new mfg",
                          text: $new)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    self.mfgs.append(self.new)
                    self.new = ""
                }) {
                    Text("Add")
                    .buttonStyle(BorderlessButtonStyle())
                }
            }.padding([.leading,.trailing])
            List {
                ForEach(mfgs, id:\.self) { user in
                    Text(user)
                }.onDelete { offsets in
                    self.mfgs.remove(atOffsets: offsets)
                }.onMove { source, destination in
                    self.mfgs.move(fromOffsets: source, toOffset: destination)
                }
            }
        }
    }
}

struct AddRowExample_Previews: PreviewProvider {
    static var previews: some View {
        AddRowExample()
    }
}
