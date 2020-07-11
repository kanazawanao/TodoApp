//
//  AlertOnClickExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/07/11.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct AlertOnClickExample: View {
    @State var showingAlert = false
    @State var answerMessage = ""
    
    var body: some View {
        let onButtonClickCat = {
            self.answerMessage = "あなたは猫を選びました"
        }
        let onButtonClickDog = {
            self.answerMessage = "あなたは犬を選びました"
        }
        return VStack {
            Spacer()
            Button(action: {
                self.showingAlert = true
            }) {
                Text("アラートを表示")
            }
            .alert(isPresented: $showingAlert) {
                Alert.init(
                title: Text("質問"),
                message: Text("あなたはどちらの動物に誓いですか？"),
                primaryButton: .destructive(Text("ネコ"),
                                            action: onButtonClickCat),
                secondaryButton: .cancel(Text("イヌ"),
                                         action: onButtonClickDog))
            }
            Text(answerMessage)
            Spacer()
            Button(action: {
                self.answerMessage = ""
            }) {
                Text("Clear")
            }
        }
    }
}

struct AlertOnClickExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertOnClickExample()
    }
}
