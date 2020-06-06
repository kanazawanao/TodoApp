//
//  TextFieldExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/04/22.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct TextFieldExample: View {
    @State var name = ""
    
    var body: some View {
        VStack {
            TextField("氏名を入力してください", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("こんにちは！\(name)")
        }
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
