//
//  SesionViewController.swift
//  1deoctubre2018
//
//  Created by MacBook on 19/10/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class SesionViewController: UIViewController {

    @IBOutlet weak var nombre: UILabel!
    var fromFirstView : Int = 0
    var usuario = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usuario = fromFirstView
        nombre.text = ingresa[usuario].nombreregistardo
    }

    @IBAction func close(_ sender: UIButton) {
        
        ingresa[usuario].sesion = false
        print(ingresa[usuario].sesion)
        performSegue(withIdentifier: "toView", sender: nil)

    }
    

}
