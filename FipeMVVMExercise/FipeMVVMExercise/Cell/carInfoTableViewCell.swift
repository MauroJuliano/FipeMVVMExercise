//
//  carInfoTableViewCell.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-11-30.
//

import UIKit

class carInfoTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(brand: Brand){
        nameLabel.text = brand.name
    }
    func setupModel(model: Model) {
        nameLabel.text = model.name
    }
    
    
}
