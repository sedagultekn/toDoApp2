//
//  Todo.swift
//  toDoApp
//
//  Created by Seda Gültekin on 3.08.2023.
//

import Foundation

class ToDo {
    
    var toDo_title :String?
    var toDo_text :String?
    init(){
        
        
    }
    
    init(toDo_title: String? = nil, toDo_text: String? = nil) {
        self.toDo_title = toDo_title
        self.toDo_text = toDo_text
    }
}
