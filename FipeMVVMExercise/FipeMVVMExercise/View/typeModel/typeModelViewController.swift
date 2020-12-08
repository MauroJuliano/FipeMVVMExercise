//
//  typeModelViewController.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-11-30.
//

import UIKit

class typeModelViewController: UIViewController {

    @IBOutlet var typeModelTableView: UITableView!
    var brand: Model?
    var viewRequest = typeModelViewModel()
    var typeModelDelegateDataSource: typeModelTableViewDelegateDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let id = brand?.id {
            getCarInfo(id: id)
        }
        self.title = "Modelos"
        let nib = UINib(nibName: "carInfo", bundle: nil)
        typeModelTableView.register(nib, forCellReuseIdentifier: "carInfo")
    }
    
    func getCarInfo(id: String) {
        let resquestURL = "https://parallelum.com.br/fipe/api/v1/carros/marcas/\(id)/modelos"
        viewRequest.getCarsInfoWithMVVM(url: resquestURL, completionHandler: {success, _ in
            if success {
                self.configureTableView()
            }
        })
    }
    func configureTableView() {
        
        self.typeModelDelegateDataSource = typeModelTableViewDelegateDataSource(modelViewModel: self.viewRequest, view: self)
        self.typeModelTableView.delegate = typeModelDelegateDataSource
        self.typeModelTableView.dataSource = typeModelDelegateDataSource
        self.typeModelTableView.reloadData()
    }

}
