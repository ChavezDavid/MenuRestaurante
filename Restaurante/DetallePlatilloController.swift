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
        imgPlatillo.image = platillo?.imagenDetalle
        lblPlatillo.text = platillo?.descripcion
        self.title = platillo?.nombre
        
        if (platillo?.comentarios.count)! > 0 {
            let ultimoComentario=platillo?.comentarios[(platillo?.comentarios.count)! - 1]
            lblUsuario.text = ultimoComentario?.usuario
            lblComentario.text = ultimoComentario?.comentario
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToListaComentarios"{
            let destino = segue.destination as! ListaComentariosController
            destino.comentarios = platillo?.comentarios
        } else if segue.identifier == "goToAgregarComentario"{
            let destino = segue.destination as! AgregarComentarioController
            destino.platillo = platillo
        }
    }
}
