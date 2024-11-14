//
//  DetalleViewController.swift
//  ejemploTablaU02
//
//  Created by user258285 on 11/14/24.
//

import UIKit

class DetalleViewController: UIViewController {
	
    // Elementos vinculados de DetalleViewControler
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var correo: UILabel!
    @IBOutlet weak var telefono: UILabel!
    var datosLista: Contacto?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ASIGNAMOS LOS DATOS QUE LLEGAN A TRAVÉS DEL SEGUE
        title = "\(datosLista!.nombre) \(datosLista!.apellidos)"
        correo.text = "E-mail: \(datosLista!.email)"
        telefono.text = "Teléfono: \(datosLista!.telefono)"
        foto.image = UIImage (named: datosLista!.foto)
    }

    
}
	
