//
//  ViewController.swift
//  password
//
//  Created by macbook on 08/10/18.
//  Copyright © 2018 gato3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //var users: [Usuarios] = []
    
    @IBOutlet weak var user: UITextField!

    @IBOutlet weak var password: UITextField!
    
    var usuario: String = ""
    var contraseña: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //recuperar datos:
        let defautls = UserDefaults.standard
        
        users = defautls.object(forKey: "users") as? [Usuarios] ?? [Usuarios]()

    }

    @IBAction func ingresar(_ sender: UIButton) {
        for i in users{
            print(i.usuario)
            if i.usuario == user.text{
                print("Oye si estas compa!!!")
                if i.contraseña == password.text{
                    print("Y además tu contraseña es correcta")
                }
                //aqui falta comando para ir a otra vista
            }
            else{
                print("pos no estas compa")
            }
        }
    }
}
