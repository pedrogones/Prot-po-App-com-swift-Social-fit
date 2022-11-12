//
//  HomeViewController.swift
//  Prototype
//
//  Created by Student on 07/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var atualizacaoAnotacao : String?
    var msg : String = " teste DEBUG"

    @IBOutlet weak var lembreteTextView: UITextView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    //atualizacaoAnotacao =
    
    //lembreteTextView.text = atualizacaoAnotacao!
    
    override func viewDidLoad() {
         super.viewDidLoad()
              
        
        self.title = "Home"
        
     
        print("teste \(msg)" )
         // Do any additional setup after loading the view.
        
        
        downloadJSON {
            self.lembreteTextView.text = self.msg
            print(self.msg)
            
            
        }
        //MyVariables.rev_lembrete = " TESTE "
        
     }
    

    
    override func viewDidAppear(_ animated: Bool) {
        
        downloadJSON {
                   self.lembreteTextView.text = self.msg
                   print(self.msg)
                   
                   
               }
        
        self.title = "Home"
        self.userNameLabel.text = MyVariables.nome
    }
    
    
    func downloadJSON(completed: @escaping () -> ()){
        let url = URL(string: "http://192.168.128.48:1880/get")
        URLSession.shared.dataTask(with: url!) {
            data, response, err in
            if err == nil {
                do {
                    let array = try JSONDecoder().decode([Lembrete].self, from: data!)
                    MyVariables.rev_lembrete = array[0]._rev
                    self.msg = array[0].lembrete!
                    
                    DispatchQueue.main.async {
                        completed()
                    }
                    
                }
                catch {
                    print("error fetching data from api")
                }
            }
        }.resume()
    }


}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

struct MyVariables {
    static var rev_lembrete = "2-8f88a839765b2b4dbbb92ce48986c437"
    static var nome : String?
    static var exercicioFavorito : String?
    static var objetivo : String?
    
}


struct Lembrete : Codable {
    var _id : String
    var _rev: String
    var lembrete: String?
}
