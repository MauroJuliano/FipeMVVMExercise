//
//  typeModel.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-11-30.
//

import Foundation
import UIKit

class typeModelTableViewDelegateDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var modelRequest = typeModelViewModel()
    var View = typeModelViewController()
    
    init(modelViewModel: typeModelViewModel, view: typeModelViewController){
        self.modelRequest = modelViewModel
        self.View = view
       // super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder)
    {
             fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let viewcontroller = UIStoryboard(name: "typeModel", bundle: nil).instantiateInitialViewController() as? typeModelViewController{
//            View.navigationController?.pushViewController(viewcontroller, animated: true)
//        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return modelRequest.numberOfRows()
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "carInfoCell") as? carInfoTableViewCell {
            
            let carInfo = modelRequest.modelArray[indexPath.row]
            cell.setupModel(model: carInfo)
            return cell
            
        }
        return UITableViewCell()
    }
}
