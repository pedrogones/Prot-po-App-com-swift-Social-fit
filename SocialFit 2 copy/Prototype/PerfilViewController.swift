//
//  PerfilViewController.swift
//  Prototype
//
//  Created by Student on 09/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {
    
    
    @IBOutlet weak var nomeUsuarioPerfilLabel: UILabel!
    
    @IBOutlet weak var atividadeFavoritaTextView: UITextView!
    
    @IBOutlet weak var objetivoTextView: UITextView!
    

    override func viewDidLoad() {
        
        self.title = "Meu Perfil"

        
        nomeUsuarioPerfilLabel.text = MyVariables.nome
        atividadeFavoritaTextView.text = MyVariables.exercicioFavorito
        objetivoTextView.text = MyVariables.objetivo
        
        
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        nomeUsuarioPerfilLabel.text = MyVariables.nome
              atividadeFavoritaTextView.text = MyVariables.exercicioFavorito
              objetivoTextView.text = MyVariables.objetivo
        
        self.view.reloadInputViews()
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
