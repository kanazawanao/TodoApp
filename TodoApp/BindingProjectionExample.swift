//
//  BindingProjectionExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/07/24.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct BindingProjectionExample: View {
    @State var order = ""
    var body: some View {
        NavigationView {
            VStack {
                Text(order)
                NavigationLink(destination: InputTextView(text: $order)) {
                    Text("入力")
                }
            }
        }
    }
}
struct InputTextView: View {
    @Binding var text: String
    var body: some View {
        TextField("ここに入力", text: $text)
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct BindingProjectionExample_Previews: PreviewProvider {
    static var previews: some View {
        BindingProjectionExample()
    }
}
