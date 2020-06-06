//
//  StaticListExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/04/23.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct StaticListExample: View {
    var body: some View {
        List {
            Text("壱岐島")
            HStack {
                Text("伊々")
                Spacer()
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.blue)
            }
            Text("ターリー屋")
        }
    }
}

struct StaticListExample_Previews: PreviewProvider {
    static var previews: some View {
        StaticListExample()
    }
}
