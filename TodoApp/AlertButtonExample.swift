//
//  AlertButtonExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/07/11.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct AlertButtonExample: View {
    @State var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("アラートを表示")
        }.alert(isPresented: $showingAlert) {
            Alert(
            title: Text("質問"),
            message: Text("あなたはどちらの動物の誓いですか"),
            primaryButton: .destructive(Text("ネコ")),
            secondaryButton: .cancel(Text("イヌ")))
        }
    }
}

struct AlertButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertButtonExample()
    }
}
