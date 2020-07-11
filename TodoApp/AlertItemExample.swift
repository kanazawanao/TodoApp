//
//  AlertItemExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/07/11.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct AlertItemExample: View {
    @State var error: AlertError?
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                self.error = AlertError(
                title: "警告",
                message: "燃料の残量が著しく低下。危険です",
                ok: "わかった")
            }) {
                Text("アラートを表示")
            }
            Spacer()
            Text("\(error?.description ?? "error is nil")")
        }.alert(item: $error) { error in
            Alert(title: Text(error.title),
                  message: Text(error.message),
                  dismissButton: .default(Text(error.ok)))
        }
    }
}

struct AlertItemExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertItemExample()
    }
}
