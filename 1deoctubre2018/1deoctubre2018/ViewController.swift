//
//  ViewController.swift
//  1deoctubre2018
//
//  Created by macbook on 01/10/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //var lista : [String] = []
    @IBOutlet weak var caja: UITextField!
    @IBOutlet weak var ingrecontra: UITextField!
    
    @IBAction func ingreso(_ sender: UIButton) {
        print("hola")
        let defaults = UserDefaults.standard
        let ingres = caja.text
        let ingrecon = ingrecontra.text
        //Captura de datos
        if let usuario = caja.text{
            defaults.set(usuario, forKey: "ingres")
            
        }
        if let usuario = ingrecontra.text{
            defaults.set(usuario, forKey: "ingrecon")
        }
        //ingresar a la lista
        let ingresodato = login(nombreregistardo: caja.text!, contraseñaresgitrada: ingrecontra.text!)
        ingresa.append(ingresodato)
        // para acceder con  los datos
        var size1 = registracion.count
        print(size1)
        var i = 0
        while i < size1 {
            if(ingresa[i].nombreregistardo == registracion[i].nombre) && (ingresa[i].contraseñaresgitrada == registracion[i].contraseña){
            performSegue(withIdentifier: "ingresoacces", sender: nil)
          }
          size1 -= 1
        }
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
      

}

