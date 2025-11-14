Feature: US033 - Reporte de asistencia entregada
  Como voluntario
  Quiero registrar los insumos o ayudas entregadas
  Para mantener control de los recursos distribuidos

  Scenario Outline: Escenario 1 - Registrar entrega de ayuda
    Given que accedo al formulario de entrega de ayuda
    When registro el tipo de ayuda "<tipo>", la cantidad "<cantidad>" y la ubicación "<ubicacion>"
    And adjunto la foto "<foto>"
    Then el reporte queda registrado y enviado a la autoridad correspondiente

    Examples:
      | tipo       | cantidad | ubicacion         | foto       |
      | alimentos  | 30       | Zona Norte        | entrega1.jpg |
      | medicinas  | 10       | Zona Centro       | entrega2.jpg |

  Scenario Outline: Escenario 2 - Validación automática del reporte
    Given que el sistema recibe el reporte de tipo "<tipo>"
    When valida la información
    Then marca el reporte como "<estado>" según su calidad

    Examples:
      | tipo      | estado     |
      | alimentos | aceptado   |
      | medicinas | pendiente  |
