# ExamenAIT – SwiftUI + MVVM

Una app nativa en iOS que consume la [API de Rick and Morty](https://rickandmortyapi.com), desarrollada con SwiftUI y arquitectura MVVM.

---
## Resqusitos minimos

- Xcode 15.2
- iOS 17.2
- MacBook o iMac que corra esa version de Xcode

## Tecnologías usadas

- SwiftUI (Interfaz declarativa)
- MVVM (Model-View-ViewModel)
- URLSession (Consumo de red)
- UserDefaults (Almacenamiento local seguro)
- MapKit (Mapa con coordenadas simuladas)
- Face ID / Touch ID (Protección de favoritos)
- Pruebas unitarias con XCTest

---

## Funcionalidades

### Pantalla principal
- Listado paginado de personajes.
- Filtros por estado, especie y nombre.
- Pull to refresh.
- Buscador.
- Indicadores de carga / error / estado vacío.

### Pantalla de detalle
- Imagen, nombre, estado, especie, género y ubicación.
- Lista de episodios donde aparece.
- Botón para ver ubicación simulada en el mapa.
- Marcar como favorito.

### Favoritos
- Lista de personajes favoritos.
- Acceso protegido con Face ID o Touch ID.

### Mapa
- Vista con `MapKit`.
- Coordenadas simuladas por personaje.
- Navegación desde detalle.

---

## Pruebas

El proyecto incluye un `MockAPIService` para pruebas unitarias.  
Ejemplo de prueba: `CharacterListViewModelTests.swift`.

---

## Cómo correr el proyecto

1. Clona este repositorio:
   ```bash
   git clone https://github.com/AntonioBedolla/ExamenAIT.git
