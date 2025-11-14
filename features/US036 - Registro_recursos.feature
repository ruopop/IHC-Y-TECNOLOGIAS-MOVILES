Feature: US036 - Registro de recursos disponibles
  Como voluntario
  Quiero registrar los recursos disponibles
  Para optimizar la distribución durante emergencias

  Scenario Outline: Escenario 1 - Registrar recurso disponible
    Given que accedo al formulario de registro de recursos
    When registro el recurso "<recurso>", la cantidad "<cantidad>" y la ubicación "<ubicacion>"
    Then el recurso queda registrado en el sistema

    Examples:
      | recurso   | cantidad | ubicacion       |
      | vehículos | 4        | Zona Norte      |
      | medicinas | 20       | Zona Centro     |

  Scenario Outline: Escenario 2 - Editar o eliminar recursos
    Given que el recurso "<recurso>" está registrado
    When selecciono la opción "<accion>"
    Then el sistema actualiza la información del recurso

    Examples:
      | recurso   | accion   |
      | medicinas | editar   |
      | vehículos | eliminar |
