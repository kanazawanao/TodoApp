//
//  TabExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/05/22.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct TabExample: View {
    var body: some View {
        TabView {
            Text("FirstContent")
                .tabItem { Text("First") }
            Text("SecondContent")
                .tabItem { Text("Second") }
        }
    }
}

struct TabExample_Previews: PreviewProvider {
    static var previews: some View {
        TabExample()
    }
}
