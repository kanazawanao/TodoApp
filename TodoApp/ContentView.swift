//
//  ContentView.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/04/11.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var labelText = "Hello SwiftUI"
    var body: some View {
        VStack{
            HStack{
                Text("アラームOFF")
                .frame(alignment: .leading)
                Text("4/22 水曜日")
                .frame(alignment: .topLeading)
            }
            HStack {
                VStack {
                    Text("22")
                        .position(x:30, y: 30)
                        .font(.largeTitle)
                        .frame(alignment: .topLeading)
                    Image("Italy")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                Text("思考を入れ替える訓練を使しよう")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                    .frame(alignment: .top)
            }
            HStack {
                Text("ここに文章入れる")
                    .position(x:100, y: 20)
                    .frame(alignment: .top)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("開く")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
