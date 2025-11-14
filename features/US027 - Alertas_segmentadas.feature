Feature: US027 - Envío de alertas segmentadas
  Como autoridad local
  Quiero enviar alertas a zonas específicas dentro de mi distrito
  Para evitar confundir a usuarios fuera del área de riesgo

  Scenario Outline: Escenario 1 - Seleccionar zonas del mapa
    Given que accedo al panel de alertas segmentadas
    When selecciono la zona "<zona>" en el mapa interactivo
    Then la zona "<zona>" queda marcada para recibir la nueva alerta

    Examples:
      | zona        |
      | Sector Norte|
      | Sector Sur  |

  Scenario Outline: Escenario 2 - Enviar alerta segmentada
    Given que ya seleccioné la zona "<zona>" para segmentar la alerta
    When defino el tipo de alerta "<tipo_alerta>" y nivel "<nivel>"
    And envío la notificación
    Then solo los usuarios dentro de "<zona>" reciben la alerta de tipo "<tipo_alerta>"

    Examples:
      | zona         | tipo_alerta | nivel |
      | Sector Norte | inundación  | alto  |
      | Sector Sur   | desborde    | medio |
