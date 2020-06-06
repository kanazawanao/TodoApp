//
//  FormExampleView.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/05/21.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct FormExampleView: View {
    @State var showText = false
    @State var name = ""
    var susi = ["まぐろ","サーモン","いくら","エビ","穴子"]
    @State var selected = 0
    @State var birthDate = Date()
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("顧客情報入力")){
                    TextField("氏名を入力してください", text: $name)
                    Text("こんにちは！\(name)")
                    DatePicker(selection: $birthDate,
                               label: {Text("生年月日")})
                }
                Section(header: Text("寿司選択")){
                    Picker(selection: $selected,
                           label: Text("寿司ネタを選択してください"))
                    {
                        ForEach(0..<susi.count) {
                            Text(self.susi[$0])
                        }
                    }
                }
                Section {
                    Button(action: {}) {
                        Text("確定")
                    }
                }
            }
        .navigationBarTitle("寿司注文入力")
        }
    }
}

struct FormExampleView_Previews: PreviewProvider {
    static var previews: some View {
        FormExampleView()
    }
}
