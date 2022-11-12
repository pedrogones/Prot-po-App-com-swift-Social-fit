//
//  InfoTreinoViewController.swift
//  Prototype
//
//  Created by Student on 10/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class InfoTreinoViewController: UIViewController {
    @IBOutlet weak var exercicio: UITextView!
    
    @IBOutlet weak var exercicio2: UITextView!
    
    @IBOutlet weak var series: UITextView!
    
    @IBOutlet weak var series2: UITextView!
    
    @IBOutlet weak var repeticoes: UITextView!
    
    @IBOutlet weak var repeticoes2: UITextView!
    
    
    var informacoes : Info?
       
       override func viewDidLoad() {
           super.viewDidLoad()

        exercicio.text = informacoes?.exercicio
        exercicio2.text = informacoes?.exercicio2
        series.text = informacoes?.serie
        series2.text = informacoes?.serie2
        repeticoes.text = informacoes?.repeticoes
        repeticoes2.text = informacoes?.repeticoes2
        
    }
    
}

