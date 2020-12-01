//
//  ViewController.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-11-30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var brandTableView: UITableView!
    
    var viewModel = BrandViewModel()
    var brandDelegateDataSource: BrandTableViewDelegateDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getCarInfo()
        // Do any additional setup after loading the view.
    }
    func getCarInfo() {
        viewModel.getCarsInfoWithMVVM(completionHandler: {success, _ in
            if success {
                self.configureTableView()
            }
        })
    }
    func configureTableView() {
        self.brandDelegateDataSource = BrandTableViewDelegateDataSource(brandViewModel: self.viewModel)
        self.brandTableView.delegate = brandDelegateDataSource
        self.brandTableView.dataSource = brandDelegateDataSource
        
        self.brandTableView.reloadData()
    }
}


