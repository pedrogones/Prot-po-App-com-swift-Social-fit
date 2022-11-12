//
//  Treinos.swift
//  Prototype
//
//  Created by Student on 09/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation
/*import UIKit

struct Treinar: Codable {
    let data : [Treinos]
}

struct Treinos: Codable {
    let dia: String
    let treinoDia: String
    let exercicio1: String
    let seriesE1: String
    let repeticoesE1: String
    let exercicio2: String
    let seriesE2: String
    let repeticoesE2: String
    let exercicio3: String
    let seriesE3: String
    let repeticoesE3: String
}
 */

class Dias {
    let diaDaSemana: String
    let treinoDoDia: String
    init(diaDaSemana: String, treinoDoDia: String){
        
        self.diaDaSemana = diaDaSemana
        self.treinoDoDia = treinoDoDia
        
    }
    
}
//DAO = DATA ACCESS OBJETC (BANCO DE DADOS)
class DiasDAO {
    
    static func getList() -> [Dias]{
        return [
            
            Dias(diaDaSemana: "Domingo", treinoDoDia: "Recuperação muscular (Day off)"),
            Dias(diaDaSemana: "Segunda-Feira", treinoDoDia: "Peito + Ombro"),
            Dias(diaDaSemana: "Terça-Feira", treinoDoDia: "Posterior de Perna + Glúteos"),
            Dias(diaDaSemana: "Quarta-Feira", treinoDoDia: "Costa + Biceps"),
            Dias(diaDaSemana: "Quinta-Feira", treinoDoDia: "Peito + Ombro + Triceps"),
            Dias(diaDaSemana: "Sexta-Feira", treinoDoDia: "Perna"),
            Dias(diaDaSemana: "Sábado", treinoDoDia: "Costa + Biceps")
            
        
        ]
    }
    
}

