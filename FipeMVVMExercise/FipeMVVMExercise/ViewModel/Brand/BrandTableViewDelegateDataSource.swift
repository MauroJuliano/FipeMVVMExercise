//
//  BrandTableViewDelegateDataSource.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-11-30.
//

import Foundation
import UIKit

class BrandTableViewDelegateDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {

    var brandViewModel = BrandViewModel()
    
    init(brandViewModel: BrandViewModel) {
        self.brandViewModel = brandViewModel
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return brandViewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "brandCell") as? BrandTableViewCell {
            
            let carInfo = brandViewModel.brandArray[indexPath.row]
            print(carInfo)
            cell.setup(brand: carInfo)
            return cell
            
        }
        return UITableViewCell()
    }
    
    
}
