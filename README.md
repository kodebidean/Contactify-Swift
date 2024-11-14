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

## Instalación

1. Clona el repositorio en tu máquina local:

   ```bash
   git clone https://github.com/kodebidean/ejemploTablaU02.git


