//
//  protocolCarsInfo.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-11-30.
//

import Foundation
import UIKit

protocol protocolCarsInfo {
    
    func getCarsInfoWithMVVM(completionHandler: @escaping (_ result: Bool, _ error: Error?) -> Void)

    func numberOfRows() -> Int
}
