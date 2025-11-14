Feature: US026 - Validación de información ciudadana
  Como autoridad local
  Quiero validar los reportes enviados por ciudadanos
  Para evitar información falsa

  Scenario Outline: Escenario 1 - Revisar un reporte pendiente
    Given que accedo al panel de revisión de reportes
    When selecciono el reporte con ID "<id_reporte>" marcado como "pendiente"
    Then puedo ver su foto, descripción y ubicación
    And el estado actual del reporte "<id_reporte>" es "pendiente"

    Examples:
      | id_reporte |
      | RPT-010    |
      | RPT-011    |

  Scenario Outline: Escenario 2 - Aprobar o rechazar un reporte
    Given que estoy revisando el reporte "<id_reporte>"
    When selecciono la opción "<accion>" para ese reporte
    Then si la acción es "Aprobar" el reporte se publica en el mapa
    And si la acción es "Rechazar" el reporte se descarta y no es visible para otros usuarios

    Examples:
      | id_reporte | accion   |
      | RPT-010    | Aprobar  |
      | RPT-011    | Rechazar |
