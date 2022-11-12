//
//  ViewControllerRotina.swift
//  Prototype
//
//  Created by Student on 07/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class checkListItem{
    let title: String
    var isChecked : Bool = false
    
    init(title: String){
        self.title = title
    }
}

class ViewControllerRotina: UIViewController {

    class viewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
        
    
    
    let items : [checkListItem] = [
        "teste 1",
        "teste 1",
        "teste 1",
        "teste 1",
        "teste 1"
        ].compactMap({
            checkListItem(title: $0)
            
        })
    
    private let tableView :UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Teste CheckList"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self

        }
        override func viewDidLayoutSubviews(){
            super.viewDidLayoutSubviews()
            tableView.frame = view.bounds
            
            
        }
        // table
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int{
            return items.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
            let item = items[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = item.title
            
            cell.accessoryType = item.isChecked ? .checkmark : .none
            
            return cell
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            let item = items[indexPath.row]
            item.isChecked = !item.isChecked
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }

}
    

}
