//
//  Info.swift
//  Prototype
//
//  Created by Student on 10/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation


class Status {
        let nomeAmigo: String
        let post: String
        let fotoAmigo: String
    let objetivos: String
        
    init (nomeAmigo: String, post: String, fotoAmigo: String, objetivos: String){
            
            self.nomeAmigo = nomeAmigo
            self.post = post
            self.fotoAmigo = fotoAmigo
            self.objetivos = objetivos
        }
    }

    class StatusDAO {
        static func getList() -> [Status]{
            return [
                Status(nomeAmigo: "Gatinha Swift", post: " Treino pagoo miaaauu!", fotoAmigo: "gatinha", objetivos:"A mimir"),
                Status(nomeAmigo: "Natália Vale", post: "Treino finalizadoo!", fotoAmigo: "natalia", objetivos:" Quero ficar trincada!"),
               Status(nomeAmigo: "João Victor", post: "O de hoje tá pago!😎", fotoAmigo: "joao", objetivos:"Fcar monstro"),
              Status(nomeAmigo: "Cássio Vittori", post: "Treino paia oh!", fotoAmigo: "cassio", objetivos:"to de boa"),
               Status(nomeAmigo: "Edilson Almeida", post: "Exercício do ano concluído!", fotoAmigo: "edilson", objetivos:"meu objetivo é fica bonito"),
               Status(nomeAmigo: "Pedro Targino", post: "Aprendendo a treinar hahaha. Tá feitoo!", fotoAmigo: "pedro", objetivos:"ficar forte"),
               Status(nomeAmigo: "Igor Matheus", post: "Concluído com sucesso!", fotoAmigo: "igor", objetivos:"crescer"),
               Status(nomeAmigo: "João Pedro", post: "Xiii, treino pagoo!", fotoAmigo: "joao_pedro", objetivos:"A mimir")
                
                
            ]
        }
    }




