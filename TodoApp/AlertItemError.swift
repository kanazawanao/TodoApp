//
//  AlertItemError.swift
//  TodoApp
//
//  Created by 金澤直 on 2020/07/11.
//  Copyright © 2020 Nao. All rights reserved.
//

import Foundation
struct AlertError: Identifiable, CustomStringConvertible {
    var description: String {
        "title: \(title) \nmessage: \(message) \nok: \(ok)"
    }
    
    var id = UUID()
    let title: String
    let message: String
    let ok: String
}
