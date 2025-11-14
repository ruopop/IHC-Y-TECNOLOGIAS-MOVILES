Feature: US032 - Asignación de zonas de ayuda
  Como voluntario
  Quiero recibir la asignación de una zona específica
  Para evitar duplicar esfuerzos con otros equipos

  Scenario Outline: Escenario 1 - Ver zonas asignadas
    Given que accedo al panel de zonas asignadas
    When el sistema carga mi zona "<zona>"
    Then veo los puntos de entrega y las indicaciones correspondientes

    Examples:
      | zona         |
      | Zona Norte   |
      | Zona Este    |

  Scenario Outline: Escenario 2 - Actualizar estado de la zona
    Given que estoy en la zona asignada "<zona>"
    When marco la zona como "<estado>"
    Then el sistema actualiza el estado para la autoridad local

    Examples:
      | zona       | estado     |
      | Zona Norte | en proceso |
      | Zona Este  | finalizada |
