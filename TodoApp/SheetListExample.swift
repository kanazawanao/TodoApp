//
//  SheetListExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/05/21.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct SheetListExample: View {
    @State var mfgs = ["Kawasaki", "Honda", "Yamaha", "Suzuki", "Ducati", "BMW"]
    @State var showingDetail = false
    var body: some View {
        List {
            Text("Manufactuaring").font(.system(size: 30))
            ForEach(mfgs, id: \.self) { mfg in
                Button(action: {self.showingDetail.toggle()}) {
                    Text(mfg)
                }.sheet(isPresented: self.$showingDetail) {
                    DetailView(name: mfg)
                }
            }
        }
    }
}

struct DetailView: View {
    var name: String
    var body: some View {
        Text(name).font(.system(size: 30))
    }
}

struct SheetListExample_Previews: PreviewProvider {
    static var previews: some View {
        SheetListExample()
    }
}
