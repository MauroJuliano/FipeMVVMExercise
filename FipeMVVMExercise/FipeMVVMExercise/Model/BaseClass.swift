//
//  Brand.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-11-30.
//

import Foundation

class BaseClass: NSObject, protocolDictionary {
    var name: String!
    var id: String!
    
    required init(fromDictionary dictionary: [String : Any]){
        self.name = dictionary["nome"] as? String
        self.id = dictionary["codigo"] as? String
        
        if id == nil {
            if let intId = dictionary["codigo"] as? Int {
                id = "\(intId)"
            }
        }
    }
}
