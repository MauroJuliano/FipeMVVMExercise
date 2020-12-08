//
//  CarSelected.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-12-08.
//

import Foundation
class CarSelected: NSObject {
    var valor: String!
    var marca: String!
    var modelo: String!
    var ano: Int!
    var combustivel: String!
    
    init(fromDicationary dictionary: [String: Any]){
        self.valor = dictionary["Valor"] as? String
        self.marca = dictionary["Marca"] as? String
        self.modelo = dictionary["Modelo"] as? String
        self.ano = dictionary["AnoModelo"] as? Int
        self.combustivel = dictionary["Combustivel"] as? String
     }
}
