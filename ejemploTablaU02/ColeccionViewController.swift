//
//  ColeccionViewController.swift
//  ejemploTablaU02
//
//  Created by user258285 on 11/14/24.
//

import UIKit

class ColeccionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    // Pasamos la varibable con la lista de contactos
    var contactos = [Contacto]()

    
    @IBOutlet weak var coleccion: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coleccion.delegate = self
        coleccion.dataSource = self
        
        // Pasamos los contactos
        let contacto1 = Contacto(nombre: "Daniela", apellidos: "Rodríguez", telefono: "912345678", email: "daniela@correo.com", foto: "foto1")
        let contacto2 = Contacto(nombre: "Mariana", apellidos: "López", telefono: "923456789", email: "mariana@correo.com", foto: "foto2")
        let contacto3 = Contacto(nombre: "Samuel", apellidos: "García", telefono: "934567890", email: "samuel@correo.com", foto: "foto3")
        let contacto4 = Contacto(nombre: "Lucía", apellidos: "Fernández", telefono: "945678901", email: "lucia@correo.com", foto: "foto4")
        let contacto5 = Contacto(nombre: "Valeria", apellidos: "Gómez", telefono: "956789012", email: "valeria@correo.com", foto: "foto5")
        let contacto6 = Contacto(nombre: "Sofía", apellidos: "Sánchez", telefono: "967890123", email: "sofia@correo.com", foto: "foto6")
        let contacto7 = Contacto(nombre: "Mateo", apellidos: "Martínez", telefono: "978901234", email: "mateo@correo.com", foto: "foto7")
        let contacto8 = Contacto(nombre: "Pepe", apellidos: "García", telefono: "989012345", email: "pepe@correo.com", foto: "foto8")
        let contacto9 = Contacto(nombre: "Juan", apellidos: "López", telefono: "999123456", email: "juan@correo.com", foto: "foto9")
        let contacto10 = Contacto(nombre: "Ana", apellidos: "Martínez", telefono: "910123456", email: "ana@correo.com", foto: "foto10")
        let contacto11 = Contacto(nombre: "Pablo", apellidos: "González", telefono: "911234567", email: "pablo@correo.com", foto: "foto11")
        let contacto12 = Contacto(nombre: "María", apellidos: "Pérez", telefono: "921234567", email: "maria@correo.com", foto: "foto12")
    
        // Agregar los contactos a la lista
        contactos.append(contacto1)
        contactos.append(contacto2)
        contactos.append(contacto3)
        contactos.append(contacto4)
        contactos.append(contacto5)
        contactos.append(contacto6)
        contactos.append(contacto7)
        contactos.append(contacto8)
        contactos.append(contacto9)
        contactos.append(contacto10)
        contactos.append(contacto11)
        contactos.append(contacto12)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coleccion.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! CeldaCollectionViewCell
        let list = contactos [indexPath.row]
        cell.nombre.text = list.nombre
        cell.foto.image = UIImage(named: list.foto)
        return cell
    }

}
