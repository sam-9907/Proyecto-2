//
//  ViewController.swift
//  1deoctubre2018
//
//  Created by macbook on 01/10/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lista : [String] = []
    @IBOutlet weak var caja: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      let defaults = UserDefaults.standard
        print("inicio")
        lista = defaults.object(forKey: "lista") as? [String] ?? [String]()
        print(lista.count)
        for cadena in lista{
            print(cadena)
        }
    }

    @IBAction func guardar(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        if let dato = caja.text{
            lista.append(dato)
            defaults.set(lista,forKey: "lista")
        }
    }


}

