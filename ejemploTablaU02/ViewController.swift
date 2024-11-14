//
//  ViewController.swift
//  ejemploTablaU02
//
//  Created by user258285 on 11/14/24.
//
import UIKit

// ASOCIAR EL DELEGADO Y EL DATASOURCE (Obligan a implementar los métodos numberOfRowsInSection y CellForRowAt)
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var viewTable: UITableView!
    // Crear una varibable con la lista de contactos
    var contactos = [Contacto]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()	
        
        viewTable.delegate = self
        viewTable.dataSource = self
        
        // Creamos los contactos
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
    
    // Función para el número de columnas en la sección integrada por Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactos.count
    }
    
    
    // Función para saber que hacer con la celda que esta en una determinada fila
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Le decimos el identificador de la celda "celda"
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        // Identifique el contacto sobre el que se ha hecho click
        let cellList = contactos[indexPath.row]
        // A la celda le asignamos el nombre de apellidos en textlabel
        cell.textLabel?.text = "\(cellList.nombre) \(cellList.apellidos)"
        // Le asignamos el email
        cell.detailTextLabel?.text = cellList.email
        // Le asignamos la foto
        cell.imageView?.image = UIImage(named: cellList.foto)
        // Devolvemos la celda
        return cell
    }
    
    // Para identificar el segue debemos utilizar la siguiente función que indica al performsegue el identificador
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "enviar", sender: self)
        
    }
    // Funcíon para que prepare el envío
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Si el ident del segue es enviar
        if segue.identifier == "enviar" {
            // Recoger el indice del elemento pulsado, asegurando que exista
            if let id = viewTable.indexPathForSelectedRow{
                // Mediante el indice extraigo el contacto al que pertenece
                let fila = contactos[id.row]
                // Le indicamos el destino que es DetalleViewController
                let destino = segue.destination as? DetalleViewController
                // Al destino le asignamos la fila seleccionada
                destino?.datosLista = fila
            }
        }
    }
    
}
