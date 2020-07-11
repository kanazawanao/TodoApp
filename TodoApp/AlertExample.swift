//
//  AlertExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/07/11.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct AlertExample: View {
    @State var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("アラートを表示")
        }.alert(isPresented: $showingAlert) {
            Alert(title: Text("警告"),
                  message: Text("今日は紫外線が強いので日焼け止め必須です"),
                  dismissButton: .default(Text("わかったよ")))
        }
    }
}

struct AlertExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertExample()
    }
}
