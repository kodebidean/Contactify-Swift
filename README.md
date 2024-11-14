---

### Contenido para README.md

```markdown
# ejemploTablaU02

**ejemploTablaU02** es una aplicación de iOS desarrollada en Swift y UIKit para la gestión de contactos. Permite visualizar una lista de contactos y ver detalles de cada uno de ellos a través de una navegación simple y efectiva con `UITableView` y `Navigation Controller`.

## Descripción

La aplicación consta de una pantalla principal que muestra una lista de contactos, incluyendo su nombre, apellidos, y correo electrónico. Al seleccionar un contacto, se abre una pantalla de detalles donde se muestra información adicional, como el teléfono y la foto del contacto.

### Estructura del Proyecto

- **ViewController.swift**: Controlador principal que gestiona la lista de contactos usando `UITableView`.
- **Contacto.swift**: Modelo de datos que define la estructura de un contacto, con propiedades como `nombre`, `apellidos`, `telefono`, `email`, y `foto`.
- **DetalleViewController.swift**: Controlador de la vista de detalle del contacto, donde se muestra información específica del contacto seleccionado.

### Funcionalidades

1. **Listado de Contactos**: Muestra los nombres y apellidos de los contactos en una `UITableView`.
2. **Visualización Detallada**: Al tocar un contacto, la aplicación navega a una vista de detalle donde se muestra el nombre, correo electrónico, teléfono y foto del contacto.
3. **Navegación entre Pantallas**: Implementa un `Navigation Controller` para gestionar la navegación entre la vista de lista y la vista de detalles.

### Código Principal

#### ViewController.swift

```swift
// ASOCIAR EL DELEGADO Y EL DATASOURCE (Obligan a implementar los métodos numberOfRowsInSection y CellForRowAt)
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var viewTable: UITableView!
    var contactos = [Contacto]()
    // Configuración y creación de contactos en viewDidLoad
}
```

#### Contacto.swift

```swift
struct Contacto {
    let nombre: String
    let apellidos: String
    let telefono: String
    let email: String
    let foto: String // STRING SERÁ MÁS ÚTIL QUE IMAGE
}
```

#### DetalleViewController.swift

```swift
class DetalleViewController: UIViewController {
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var correo: UILabel!
    @IBOutlet weak var telefono: UILabel!
    var datosLista: Contacto?
    // Configuración de la vista con los datos del contacto
}
```

### Instalación

1. Clona el repositorio en tu máquina local.
   ```bash
   git clone https://github.com/tu-usuario/ejemploTablaU02.git
   ```
2. Abre el proyecto en Xcode y ejecuta la aplicación en un simulador o dispositivo físico.

### Requisitos

- iOS 13.0 o superior
- Xcode 12.0 o superior

### Licencia

Este proyecto se distribuye bajo la licencia MIT. Consulta el archivo `LICENSE` para obtener más detalles.

---
