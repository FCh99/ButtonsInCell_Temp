//
//  Animal.swift
//  ButtonsInCell_Temp
//
//  Created by Fausto Checa on 13/2/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class Animal {
    
    var tipo: String!
    var nombre: String!
    var edadAnimal: Int!
    var foto: String!
    
    init(tipo: String, nombre: String, edadAnimal: Int, foto: String) {
        self.tipo = tipo
        self.nombre = nombre
        self.edadAnimal = edadAnimal
        self.foto = foto
    }

}
