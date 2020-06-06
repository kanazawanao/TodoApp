//
//  DynamicListExample2.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/04/23.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI
struct Restaurant2: Identifiable {
    var id = UUID()
    var title: String
    var type: String
    var note: String
    var rating: Int
}
struct RestaurantRow: View {
    var restaurant: Restaurant2
    var body: some View {
        RestaurantView(
            title: restaurant.title,
            type: restaurant.type,
            note: restaurant.note,
            rating: restaurant.rating
        )
    }
}
struct DynamicListExample2: View {
    var body: some View {
        let restaurants = [
            Restaurant2(
                title: "壱岐の島",
                type: "居酒屋", note: "おいしい和食を提供",
                rating: 5
            ),
            Restaurant2(
                title: "いい",
                type: "小料理屋",
                note: "何とも言えない店構え",
                rating: 3
            ),
            Restaurant2(
                title: "ターリー屋",
                type: "インド料理",
                note: "ナンおかわり自由",
                rating: 4
            )
        ]
        return List(restaurants, rowContent: RestaurantRow.init)
    }
}

struct DynamicListExample2_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListExample2()
    }
}
