//
//  RedeSocial.swift
//  Prototype
//
//  Created by Student on 10/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class RedeSocial {
    let nomeAmigo: String
    let post: String
    let fotoAmigo: String
    
    init (nomeAmigo: String, post: String, fotoAmigo: String){
        
        self.nomeAmigo = nomeAmigo
        self.post = post
        self.fotoAmigo = fotoAmigo
    }
}

class RedeSocialDAO {
    static func getList() -> [RedeSocial]{
        return [
            RedeSocial(nomeAmigo: "Gatinha Swift", post: " Treino pagoo miaaauu!", fotoAmigo: "gatinha"),
            RedeSocial(nomeAmigo: "Natália Vale", post: "Treino finalizadoo!", fotoAmigo: "natalia"),
           RedeSocial(nomeAmigo: "João Victor", post: "O de hoje tá pago!😎", fotoAmigo: "joao"),
           RedeSocial(nomeAmigo: "Cássio Vittori", post: "Treino paia oh!", fotoAmigo: "cassio"),
           RedeSocial(nomeAmigo: "Edilson Almeida", post: "Exercício do ano concluído!", fotoAmigo: "edilson"),
           RedeSocial(nomeAmigo: "Pedro Targino", post: "Aprendendo a treinar hahaha. Tá feitoo!", fotoAmigo: "pedro"),
           RedeSocial(nomeAmigo: "Igor Matheus", post: "Concluído com sucesso!", fotoAmigo: "igor"),
           RedeSocial(nomeAmigo: "João Pedro", post: "Xiii, treino pagoo!", fotoAmigo: "joao_pedro")
            
            
        ]
    }
}
