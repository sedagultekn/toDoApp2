//
//  Detail.swift
//  toDoApp
//
//  Created by Seda Gültekin on 3.08.2023.
//

import UIKit

class Detail: UIViewController {
    var toDoList = [ToDo]()
    @IBOutlet weak var guncelleButton: UIButton!
    @IBOutlet weak var tfTitle: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tfToDo: UITextField!
    
    var toDoModel: ToDo?
    override func viewDidLoad() {
        super.viewDidLoad()
        let toDo1 = ToDo(toDo_title: "rudy",toDo_text: "rudye su ver")
        let toDo2 = ToDo(toDo_title: "rudy",toDo_text: "rudye su ver")
        let toDo3 = ToDo(toDo_title: "rudy",toDo_text: "rudye su ver")
        let toDo4 = ToDo(toDo_title: "rudy",toDo_text: "rudye su ver")
        toDoList.append(toDo1)
        toDoList.append(toDo2)
        toDoList.append(toDo3)
        toDoList.append(toDo4)
        
        
    }

    @IBAction func guncelleButton(_ sender: Any) {
    
    
        if let title = tfTitle.text,let toDo = tfToDo.text{
            guncelle(toDo_title: title, toDo_text: toDo)
        }
    }
    
    
    func guncelle(toDo_title:String,toDo_text:String){
        
        print("guncel: \(toDo_text) - \(toDo_title)")
    }
}


