//
//  DynamicListExample.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/04/23.
//  Copyright © 2020 Nao. All rights reserved.
//

import SwiftUI
struct Restaurant {
    var title: String
    var type: String
    var note: String
    var rating: Int
}
struct DynamicListExample: View {
    var body: some View {
        let restaurants = [
            Restaurant(
                title: "壱岐の島",
                type: "居酒屋", note: "おいしい和食を提供",
                rating: 5
            ),
            Restaurant(
                title: "いい",
                type: "小料理屋",
                note: "何とも言えない店構え",
                rating: 3
            ),
            Restaurant(
                title: "ターリー屋",
                type: "インド料理",
                note: "ナンおかわり自由",
                rating: 4
            )
        ]
        return List {
            ForEach(0...2, id:\.self){
                RestaurantView(title: restaurants[$0].title, type: restaurants[$0].type, note: restaurants[$0].note, rating: restaurants[$0].rating)
            }
        }
    }
}

struct DynamicListExample_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListExample()
    }
}
