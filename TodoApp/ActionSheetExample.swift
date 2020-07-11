//
//  ActionSheetExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/07/11.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct ActionSheetExample: View {
    @State var showingSheet = false
    
    var body: some View {
        Button(action: {
            self.showingSheet = true
        }) {
            Text("アクションシート表示")
        }
        .actionSheet(isPresented: $showingSheet) {
            ActionSheet(title: Text("質問"),
                        message: Text("絶対に失いたくないものは何？"),
                        buttons: [
                            .default(Text("お金")),
                            .default(Text("自由")),
                            .destructive(Text("家族")),
                            .destructive(Text("仲間")),
                            .cancel(Text("キャンセル"))
            ])
        }
    }
}

struct ActionSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetExample()
    }
}
