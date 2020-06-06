//
//  Content.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/05/22.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct Content: View {
    var content: String
    var color: Color
    var body: some View {
        ZStack {
            Rectangle().fill(color)
            Text(content).font(.largeTitle)
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content(content: "content", color: .green)
    }
}
