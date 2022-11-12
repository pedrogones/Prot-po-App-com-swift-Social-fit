//
//  Info.swift
//  Prototype
//
//  Created by Student on 10/11/22.
//  Copyright © 2022 Student. All rights reserved.
//
/*

import Foundation
import UIKit

struct Coins: Codable {
    let data: [Coin]
    let timestamp: Double
}

struct Coin: Codable {
    let id: String?
    let rank: String?
    let symbol: String?
    let name: String?
    let supply: String?
    let maxSupply: String?
    let marketCapUsd: String?
    let volumeUsd24Hr: String?
    let priceUsd: String?
    let changePercent24Hr: String?
    let vwap24Hr: String?
    let explorer: String?
    
}
 */

import Foundation


class Info {
    let exercicio: String
    let exercicio2: String
    let serie: String
    let serie2: String
    let repeticoes: String
    let repeticoes2: String
    init(exercicio: String, serie: String, exercicio2: String, serie2: String, repeticoes: String, repeticoes2: String ){
        
        self.exercicio = exercicio
        self.exercicio2 = exercicio2
        self.serie = serie
        self.serie2 = serie2
        self.repeticoes = repeticoes
        self.repeticoes2 = repeticoes2
    }
    
}
//DAO = DATA ACCESS OBJETC (BANCO DE DADOS)
class InfoDAO {
    
    static func getList() -> [Info]{
        return [
            Info(exercicio: "Descanso", serie: "---", exercicio2: "---", serie2: "---", repeticoes: "---", repeticoes2: "---"),
            Info(exercicio: "Supino reto", serie: "4", exercicio2: "Elevação Frontal", serie2: "5", repeticoes: "4", repeticoes2: "5"),
            Info(exercicio: "Extensora ", serie: "4", exercicio2: "Elevação Pélvica", serie2: "4", repeticoes: "6", repeticoes2: "6"),
            Info(exercicio: "Puxada Frontal", serie: "4", exercicio2: "Rosca Martelo", serie2: "5", repeticoes: "7", repeticoes2: "5"),
            Info(exercicio: "Crucifixo", serie: "4", exercicio2: "Elevação Lateral", serie2: "5", repeticoes: "6", repeticoes2: "12"),
            Info(exercicio: "Leg Press", serie: "4", exercicio2: "Leg 45", serie2: "12", repeticoes: "4", repeticoes2: "12"),
            Info(exercicio: "Remada", serie: "4", exercicio2: "Rosca Scott", serie2: "4", repeticoes: "12", repeticoes2: "12")
        ]
    }
    
}


