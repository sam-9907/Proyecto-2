//
//  ViewController.swift
//  1deoctubre2018
//
//  Created by macbook on 01/10/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var caja: UITextField!
    @IBOutlet weak var ingrecontra: UITextField!
    
    var i = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func ingreso(_ sender: UIButton) {
        
        let defaults = UserDefaults.standard
      
        //Captura de datos
        if let usuario = caja.text{
            defaults.set(usuario, forKey: "ingres")
            
        }
        if let usuario = ingrecontra.text{
            defaults.set(usuario, forKey: "ingrecon")
        }
        //ingresar a la lista
        let ingresodato = login(nombreregistardo: caja.text!, contraseñaresgitrada: ingrecontra.text!, sesion: false)
        ingresa.append(ingresodato)
        // para acceder con  los datos
        
        
        for k in ingresa{
            if k.sesion == true{
                let myAlert3 = UIAlertController(title: "Mensaje", message: "No puedes iniciar sesión si ya esta iniciada", preferredStyle: .alert)
                myAlert3.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self.present(myAlert3, animated: true, completion: nil)
            }
                
           // }else{
                var size1 = registracion.count
                print(size1)
                
              /*  if (ingrecontra.text == "") && (caja.text == ""){
                    
                    let myAlert2 = UIAlertController(title: "Mensaje", message: "Debes registrarte.Es GRATIS", preferredStyle: .alert)
                    myAlert2.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                    self.present(myAlert2, animated: true, completion: nil)
                    
                }*/
                    
                    while i < size1 {
                        if(ingresa[i].nombreregistardo == registracion[i].nombre) && (ingresa[i].contraseñaresgitrada == registracion[i].contraseña){
                            ingresa[i].sesion = true
                            print(ingresa[i].sesion = true)
                            performSegue(withIdentifier: "ingresoacces", sender: nil)
                            
                        }
                        size1 -= 1
                    }
            let myAlert = UIAlertController(title: "No Se Encuentra El Usuario", message: "Haz Una Cuenta ¡¡Es Gratis!!", preferredStyle: .alert)
            myAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(myAlert, animated: true, completion: nil)
                    
            
                
            //}
        }
        
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondView"{
            
            let destination = segue.destination as! SesionViewController
            
            destination.fromFirstView = i
            
            
        }
        
    }

      

}

