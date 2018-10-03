//
//  DetallePlatilloController.swift
//  Restaurante
//
//  Created by Alumno on 02/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class DetallePlatilloController : UIViewController{
    var platillo : Platillo?
    
    @IBOutlet weak var imgPlatillo: UIImageView!
    @IBOutlet weak var lblPlatillo: UILabel!
    @IBOutlet weak var lblUsuario: UILabel!
    @IBOutlet weak var lblComentario: UILabel!
    
    override func viewDidLoad(){
        imgPlatillo.image = UIImage(named: "hotdogDetalle")
    }
}
