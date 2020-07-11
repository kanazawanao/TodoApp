//
//  ActionSheetOnClickExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/07/11.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct ActionSheetOnClickExample: View {
    @State var showingSheet = false
    @State var message = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.showingSheet = true
            }) {
                Text("アクションシート表示")
            }
            .actionSheet(isPresented: $showingSheet) {
                ActionSheet(
                title: Text("Siri"),
                message: Text("最高に面白いネタを思いつきました"),
                buttons: [
                    .default(Text("言ってみて")) {
                        self.message = "私の言うことは支離滅裂ですよ"
                        + "・・・Siriだけに。"
                    },
                    .cancel(Text("結構です")){
                        self.message = "はい、わかりました"
                    }
                ])
            }
            Text(message)
        }
    }
}

struct ActionSheetOnClickExample_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetOnClickExample()
    }
}
