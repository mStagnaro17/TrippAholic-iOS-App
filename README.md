# TripAholic ✈️

**TripAholic** es una aplicación nativa para iOS diseñada para los viajeros apasionados. Permite planificar, registrar y revivir tus aventuras de forma intuitiva y visual.

Mas que una lista de tareas, TripAholic es tu bitácora de viaje personal, integrando gestión de itinerarios, control de presupuesto y diario de experiencias en una interfaz moderna y elegante.

## 📱 Características Principales

* **Gestión de Viajes (Tripps):** Crea viajes con fechas, presupuesto y portadas personalizadas.
* **Itinerario Visual:** Línea de tiempo cronológica para gestionar tus paradas (Stops).
* **Control Financiero:** Registra gastos (Expenses) por viaje o por parada específica y visualiza tu saldo disponible en tiempo real.
* **Modo Diario:** Guarda notas y recuerdos de cada lugar visitado.
* **Arquitectura Robusta:** Datos persistentes y relaciones complejas entre entidades.

## 🛠 Tech Stack

* **Lenguaje:** Swift 5.9
* **UI Framework:** SwiftUI
* **Base de Datos:** SwiftData (Persistencia local & Relaciones en cascada)
* **Arquitectura:** MV (Model-View) con Servicios desacoplados.
* **Herramientas:** Xcode 15+, PhotosUI.

## 📂 Estructura del Proyecto

El proyecto sigue una arquitectura modular para facilitar la escalabilidad:

* `Models/`: Definición de entidades de datos (`Tripp`, `Stop`, `Expense`).
* `Views/`: Interfaz de usuario dividida por módulos (`Home`, `Detail`, `Components`).
* `Services/`: Lógica de negocio y utilidades (`ImageHelper`, `LocationManager`).
* `Utils/`: Extensiones y constantes de diseño (Paleta de colores `TripAholic Theme`).
