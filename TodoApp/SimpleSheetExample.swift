//
//  SimpleSheetExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/05/21.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct SimpleSheetExample: View {
    @State var showingDetail = false
    @State var message = ""
    var body: some View {
        VStack {
            Button(action: {self.showingDetail.toggle()}) {
                Text("モーダル表示")
            }.sheet(isPresented: $showingDetail,
                    onDismiss: {
                        self.message = "モーダルを閉じました"
            }) {
                ModalView()
            }
            Text(message)
        }
    }
}

struct ModalView: View {
    var body: some View {
        Text("ModalView").font(.system(size: 30))
    }
}

struct SimpleSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        SimpleSheetExample()
    }
}
