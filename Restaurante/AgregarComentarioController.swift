//
//  AgregarComentarioController.swift
//  Restaurante
//
//  Created by Alumno on 03/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class AgregarComentarioController : UIViewController{
    
    var platillo : Platillo?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtComentario: UITextField!
    
    @IBAction func doTapAgregar(_ sender: Any) {
        let nombre = txtNombre.text!
        let comentario = txtComentario.text!
        
        platillo?.comentarios.append(Comentario(usuario: nombre, comentario: comentario))
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        
    }
}
