Feature: US041 - Recepción de alertas prioritarias
  Como voluntario
  Quiero recibir alertas prioritarias sobre zonas en peligro
  Para acudir rápidamente y brindar ayuda

  Scenario Outline: Escenario 1 - Recibir alerta prioritaria
    Given que estoy registrado como voluntario en la zona "<zona>"
    And tengo las notificaciones activadas
    When se genera una alerta prioritaria del tipo "<tipo_emergencia>"
    Then recibo una notificación inmediata con la ubicación del evento en "<ubicacion>"

    Examples:
      | zona        | tipo_emergencia | ubicacion        |
      | Zona Norte  | inundación      | Puente Central   |
      | Zona Sur    | desborde río    | Av. Principal    |

  Scenario Outline: Escenario 2 - Confirmar disponibilidad para ayudar
    Given que recibí una alerta prioritaria en la zona "<zona>"
    When selecciono la opción "<respuesta>" en la notificación
    Then el sistema registra mi disponibilidad para ayudar como "<respuesta>"

    Examples:
      | zona        | respuesta  |
      | Zona Norte  | disponible |
      | Zona Sur    | no puedo   |
