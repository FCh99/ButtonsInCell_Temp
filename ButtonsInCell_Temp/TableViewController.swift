//
//  TableViewController.swift
//  ButtonsInCell_Temp
//
//  Created by Fausto Checa on 13/2/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
   
    
    var animales: [Animal] = [
        Animal(tipo: "Perro", nombre: "Tom", edadAnimal: 12, foto: "foto1"),
        Animal(tipo: "Gato", nombre: "Mimi", edadAnimal: 6, foto: "foto2"),
        Animal(tipo: "Conejo", nombre: "Bugs Bunny", edadAnimal: 2, foto: "foto3"),
        Animal(tipo: "Chimpancé", nombre: "Paco", edadAnimal: 18, foto: "foto4"),
        Animal(tipo: "Caballo", nombre: "Coz", edadAnimal: 6, foto: "foto5"),
        Animal(tipo: "Jilguero", nombre: "Tino", edadAnimal: 2, foto: "foto6"),
        Animal(tipo: "Mula", nombre: "Francis", edadAnimal: 8, foto: "foto7"),
        Animal(tipo: "Cerdo", nombre: "Porky", edadAnimal: 5, foto: "foto8")
        
    ]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animales.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        cell.animalImageView.image = UIImage(named: animales[indexPath.row].foto)
        cell.tipoLabel.text = animales[indexPath.row].tipo
        cell.nombreLabel.text = animales[indexPath.row].nombre
        cell.edadLabel.text = String(animales[indexPath.row].edadAnimal)
        
        
        
        // puede ser útil para customizar el outlet botón a la celda en función del indexpath
        cell.calcularButton.tag = indexPath.row
        
        // si es cero o par poner el botón rojo
        if cell.calcularButton.tag % 2 == 0 {
            cell.calcularButton.tintColor = UIColor.red
        }
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

   

}
