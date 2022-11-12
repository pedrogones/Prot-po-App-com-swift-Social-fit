//
//  InfoTreinoViewController.swift
//  Prototype
//
//  Created by Student on 10/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class StatusUserViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var status: UILabel!
   
    var exibirStatus: Status?
       
    @IBOutlet weak var objetivos: UITextView!
    @IBOutlet weak var post: UITextView!
    @IBOutlet weak var teste: UILabel!
    @IBOutlet weak var userName: UILabel!
    override func viewDidLoad() {
           super.viewDidLoad()

        userName.text = exibirStatus?.nomeAmigo
        post.text = exibirStatus?.post
        imageView.image = UIImage(named: exibirStatus!.fotoAmigo)
        objetivos.text = exibirStatus?.objetivos
    
}

}
