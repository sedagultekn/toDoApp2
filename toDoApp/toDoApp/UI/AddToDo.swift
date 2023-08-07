//
//  AddToDo.swift
//  toDoApp
//
//  Created by Seda Gültekin on 3.08.2023.
//

import UIKit

class AddToDo: UIViewController {

    @IBOutlet weak var tfToDo: UITextField!
    @IBOutlet weak var tfTitle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func ekleButton(_ sender: Any) {
        if let title = tfTitle.text,let toDo = tfToDo.text{
            ekle(tf_title: title, tf_toDo: toDo)
            
        }
    }
    
    func ekle(tf_title:String,tf_toDo:String){
        print("ekle: \(tf_title) - \(tf_toDo)")
        
    }

}
