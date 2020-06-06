//
//  ToggleExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/04/22.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct ToggleExample: View {
    @State var showText = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $showText) {
                Text("テキストを表示する")
            }
            if showText {
                Text("Hello World!")
            }
        }
    }
}

struct ToggleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExample()
    }
}
