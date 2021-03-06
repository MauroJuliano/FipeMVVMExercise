//
//  typeModelViewModel.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-11-30.
//

import Foundation
import Alamofire

class CarInfoRequest{

    var modelArray = [Model]()
    var selectedCarArray = [CarSelected]()
    let apiManager = APIManager()
    
    func getCarsInfoWithMVVM(url: String,completionHandler: @escaping (_ result: Bool, _ error: Error?) -> Void){
        do{
            apiManager.request(url: url) {(json, jsonarray, errorStr) in
                if let jsonOBC = json{
                    if let jsonModels = jsonOBC["modelos"] as? [[String: Any]] {
                        for item in jsonModels {
                            self.modelArray.append(Model(fromDictionary: item))
                        }
                    }
                    if let jsonCarSelected = json as? [String: Any]{
                        let carro = CarSelected(fromDicationary: jsonCarSelected)
                        self.selectedCarArray.append(carro)
                    }
                }
                
                if let jsonObjct = jsonarray {
                            for item in jsonObjct {
                                let object = Model(fromDictionary: item)
                                self.modelArray.append(object)
                            }
                        }
                    completionHandler(true, nil)
                }
        }catch{
            completionHandler(false, nil)
        }
    }
    
    func numberOfRows() -> Int {
        return modelArray.count ?? 0
    }
    func carnumberOFRow() -> Int{
        return selectedCarArray.count ?? 0
    }
}
