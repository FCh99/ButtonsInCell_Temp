//
//  TableViewCell.swift
//  ButtonsInCell_Temp
//
//  Created by Fausto Checa on 13/2/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    // aqui va un botón para calcular la edad humana
    
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    
    @IBOutlet weak var tipoLabel: UILabel!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var edadLabel: UILabel!
    
    
    @IBOutlet weak var calcularButton: UIButton!
    @IBOutlet weak var edadHumanaLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    
    @IBAction func calcularAction(_ sender: Any) {
        let edadInt = Int(edadLabel.text!)!
        let edadHumanaInt = edadInt * 7
        let edadHumanaString = String(edadHumanaInt)
        edadHumanaLabel.text = edadHumanaString
        
        
    }
    
    
    
    

    

}
