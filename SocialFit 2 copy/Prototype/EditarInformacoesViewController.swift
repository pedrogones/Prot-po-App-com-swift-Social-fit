//
//  EditarInformacoesViewController.swift
//  Prototype
//
//  Created by Student on 09/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class EditarInformacoesViewController: UIViewController {
    
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var atividadeFavoritaTetxField: UITextField!
    
    
    @IBOutlet weak var objetivoTextField: UITextField!
    
    
    @IBAction func salvarAlteracoesButton(_ sender: Any) {
        
        MyVariables.nome = nomeTextField.text!
        MyVariables.exercicioFavorito = atividadeFavoritaTetxField.text!
        MyVariables.objetivo = objetivoTextField.text!
        
        nomeTextField.text = "  "
        atividadeFavoritaTetxField.text="  "
        objetivoTextField.text="  "
        
        let alert = UIAlertController(title: "Alteraçōes Salvas", message: "Message", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Editar Informaçōes"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
