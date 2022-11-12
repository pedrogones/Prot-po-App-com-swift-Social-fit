//
//  RotinaViewController.swift
//  Prototype
//
//  Created by Student on 08/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit



class RotinaViewController: UIViewController {
    
    
    @IBOutlet weak var atualizaLembreteTextField: UITextField!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func UpdateRotina(_ sender: Any) {
        RotinaViewController.uploadTask(lembrete: self.atualizaLembreteTextField.text!)
        
        let alert = UIAlertController(title: "Lembrete Atualizado", message: "Message", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
        
   static func uploadTask(lembrete : String) {
        
        
    var a = Rotina(id: "979c184a1dbf0472be1fac09c92fdcea", rev: MyVariables.rev_lembrete, lembrete: lembrete)
        
    
  //  print(MyVariables.rev_lembrete)
    
        guard let jsonData = try? JSONEncoder().encode(a) else{
            print(" ERROR ")
            return
        }
        
        
        //var obj = jsonData.toJSON() as? [String:AnyObject]
        
        //let rotJson = try? JSONEncoder().encode(jsonData)

       let url = NSURL(string: "http://192.168.128.48:1880/put") //Remember to put ATS exception if the URL is not https
        let request = NSMutableURLRequest(url: url! as URL)
       request.addValue("application/raw", forHTTPHeaderField: "Content-Type") //Optional
        request.httpMethod = "PUT"
        let session = URLSession(configuration:URLSessionConfiguration.default, delegate: nil, delegateQueue: nil)
       
        request.httpBody = jsonData

            let dataTask = session.dataTask(with: request as URLRequest) { (data, response, error) -> Void in

               if error != nil {

                   //handle error
               }
               else {

                let jsonStr = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                   print("Parsed JSON: '\(jsonStr)'")
               }
           }
           dataTask.resume()
            
        
    }
    

}


extension String {
    func toJSON() -> Any? {
        guard let data = self.data(using: .utf8, allowLossyConversion: false) else { return nil }
        return try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
    }
}

class Rotina: Codable {
    let _id, _rev, lembrete: String

    init(id: String, rev: String, lembrete: String) {
        self._id = id
        self._rev = rev
        self.lembrete = lembrete
    }
}
