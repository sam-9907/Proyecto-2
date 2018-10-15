//
//  Registro.swift
//  1deoctubre2018
//
//  Created by macbook on 08/10/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class Registro: UIViewController {
    @IBOutlet weak var caja1: UITextField!
    @IBOutlet weak var caja2: UITextField!
    var nombre: [String] = []
    var contraseña: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    func crealerta ()
    {
        
        var  alert = UIAlertController(title: "Tu usuario ha sido registrado", message: "", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: { (action:UIAlertAction) in
            print ("buuu")
        }))
        self.present(alert, animated: true)
        
    }


    @IBAction func regis(_ sender: UIButton) {
        nombre = [caja1.text!]
        contraseña = [caja2.text!]
        crealerta()
        print(nombre, contraseña)
        
    }
    
    

}
