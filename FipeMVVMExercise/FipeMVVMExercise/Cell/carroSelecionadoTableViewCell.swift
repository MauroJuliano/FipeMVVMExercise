//
//  carroSelecionadoTableViewCell.swift
//  FipeMVVMExercise
//
//  Created by Lestad on 2020-12-08.
//

import UIKit

class carroSelecionadoTableViewCell: UITableViewCell {
    @IBOutlet var marcaLabel: UILabel!
    @IBOutlet var modeloLabel: UILabel!
    @IBOutlet var anoLabel: UILabel!
    @IBOutlet var valorLabel: UILabel!
    @IBOutlet var combustivelLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(car: CarSelected){
        marcaLabel.text = car.marca
        modeloLabel.text = car.modelo
        if let ano = car.ano {
            anoLabel.text = "\(ano)"
        }
        
        valorLabel.text = car.valor
        combustivelLabel.text = car.combustivel
        
    }

}
