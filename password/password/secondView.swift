//
//  secondView.swift
//  password
//
//  Created by macbook on 10/10/18.
//  Copyright © 2018 gato3. All rights reserved.
//

import UIKit

class secondView: UIViewController {
  
    @IBOutlet weak var cajaN: UITextField!
    
    @IBOutlet weak var cajaU: UITextField!
    
    @IBOutlet weak var cajaC: UITextField!
    
    var newUser = Usuarios(nombre: "", usuario: "", contraseña: "")

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let defautls = UserDefaults.standard
    
        users = defautls.object(forKey: "users") as? [Usuarios] ?? [Usuarios]()
        
    }
    
    @IBAction func registrar(_ sender: UIButton) {
        print("aqui")
        let defautls = UserDefaults.standard
        
        if let dato = cajaN.text, let dato1 = cajaU.text, let dato2 = cajaC.text {
            print("o aqui")
            newUser.nombre = dato
            newUser.usuario = dato1
            newUser.contraseña = dato2
            users.append(newUser)
            defautls.set(users, forKey: "users")

        }
        print(newUser)
        print(users)
        
    }
    
}
