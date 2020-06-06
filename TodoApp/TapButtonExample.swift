//
//  TapButtonExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/04/22.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct TapButtonExample: View {
    @State var showDetails = false
    @State var isRecording = false
    
    var body: some View {
        VStack{
            Button(action: {
                self.showDetails.toggle()
            }) {
                Text("詳細表示")
            }
            if showDetails {
                Text("詳しくはWebで！")
                    .font(.largeTitle)
                    .lineLimit(nil)
            }
            Button(action: {
                self.isRecording.toggle()
            }) {
                if isRecording {
                    Image(systemName: "mic.fill")
                        .font(.system(size: 200))
                        .foregroundColor(.red)
                } else {
                    Image(systemName: "mic.slash.fill")
                        .font(.system(size: 200))
                        .foregroundColor(.secondary)
                        .offset(x: 1.5, y: 0)
                }
            }
        }
    }
}

struct TapButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        TapButtonExample()
    }
}
