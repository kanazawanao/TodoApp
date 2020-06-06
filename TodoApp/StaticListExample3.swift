//
//  StaticListExample3.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/04/23.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI

struct StaticListExample3: View {
    var body: some View {
        List {
            RestaurantView(
                title: "壱岐島",
                type: "居酒屋",
                note: "和食を提供"
            )
            RestaurantView(
                title: "伊々",
                type: "小料理屋",
                note: "何とも例えようのない店構え"
            )
            RestaurantView(
                title: "ターリー屋",
                type: "インド料理",
                note: "ナンおかわり自由"
            )
        }
    }
}

struct StaticListExample3_Previews: PreviewProvider {
    static var previews: some View {
        StaticListExample3()
    }
}
