//
//  SampleData.swift
//  To Do List
//
//  Created by Ethan Schmalz on 9/14/17.
//  Copyright © 2017 Ethan Schmalz. All rights reserved.
//

import Foundation

final class SampleData {
    
    static func generateToDoData() -> [ToDo]{
        
        return [
            ToDo(item: "Buy Milk",done: false),
            ToDo(item: "Buy eggs", done: false)
        ]
    }
}
