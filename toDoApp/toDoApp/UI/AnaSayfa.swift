//
//  ViewController.swift
//  toDoApp
//
//  Created by Seda Gültekin on 3.08.2023.
//

import UIKit

class AnaSayfa: UIViewController {
var toDoList = [ToDo]()
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        //let toDoModel = ToDo(toDo_title: "rudy",toDo_text: "rudye su vermeyi unutma!!!")
        let toDo1 = ToDo(toDo_title: "rudy",toDo_text: "rudye su ver")
        let toDo2 = ToDo(toDo_title: "ders",toDo_text: "7 de ders var")
        let toDo3 = ToDo(toDo_title: "doğum günü",toDo_text: "pastaneden pasta alınacak")
        let toDo4 = ToDo(toDo_title: "ödev",toDo_text: "perşembe ödev teslim edilecek")
        let toDo5 = ToDo(toDo_title: "telefon",toDo_text: "telefon ekranı değişilcek")
        let toDo6 = ToDo(toDo_title: "spor",toDo_text: "spor yapılcak")
        toDoList.append(toDo1)
        toDoList.append(toDo2)
        toDoList.append(toDo3)
        toDoList.append(toDo4)
   
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="detail"{
            if let toDoModel = sender as? ToDo{
                let gidilecekVC = segue.destination as! Detail
                gidilecekVC.toDoModel = toDoModel
            }
        }
            
    }
}

extension AnaSayfa:UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("kişi ara : \(searchText)")
    }
}
extension AnaSayfa:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let toDo = toDoList[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "toDoHucre") as! ToDoHucre
        hucre.toDoTextLabel.text = toDo.toDo_text
        hucre.toDoTitleLabel.text = toDo.toDo_title
        return hucre
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = toDoList[indexPath.row]
      //  performSegue(withIdentifier: "toDetay", sender: kisi)
      
        //tableView.deselectRow(at: indexPath, animated: true) //secilen cellin gri arka planını kaldırmak
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //UISwipeActionsConfigurstion silmek ici gerekli nesneyi bekliyor
        let silAction=UIContextualAction(style: .destructive, title: "Sil"){contextualAction,view,bool in
            let toDo=self.toDoList[indexPath.row]
            
            
            let alert = UIAlertController(title: "silme işlemi", message: "\(toDo.toDo_title) silinsin mi", preferredStyle: .alert)
            let iptalAction = UIAlertAction(title: "iptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "evet", style: .destructive){ action in
                print("kisi sil :\(toDo.toDo_title)")
                
            }
            alert.addAction(evetAction)
            self.present(alert,animated: true)
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
    
}
