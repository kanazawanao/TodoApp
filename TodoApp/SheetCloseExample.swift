//
//  SheetCloseExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/05/21.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct SheetCloseExample: View {
    @State var showingDetail = false
    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("モーダル表示")
        }.sheet(isPresented: $showingDetail) {
            ModalCloseView()
        }
    }
}

struct ModalCloseView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            Text("ModalView")
                .font(.system(size: 30))
                .navigationBarItems(trailing: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("close")
                })
        }
    }
}

struct SheetCloseExample_Previews: PreviewProvider {
    static var previews: some View {
        SheetCloseExample()
    }
}
