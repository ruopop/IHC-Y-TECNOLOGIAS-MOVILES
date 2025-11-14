Feature: US044 - Identificación de zonas inaccesibles
  Como voluntario
  Quiero marcar zonas a las que no se pueda acceder
  Para informar a las autoridades y buscar rutas alternativas

  Scenario Outline: Escenario 1 - Marcar zona inaccesible en el mapa
    Given que accedo al mapa de mi zona de trabajo
    When marco el punto "<ubicacion>" como zona inaccesible
    And agrego el comentario "<comentario>"
    Then el sistema registra la zona como inaccesible

    Examples:
      | ubicacion      | comentario                       |
      | -12.04,-77.07  | Calle bloqueada por inundación   |
      | -12.06,-77.03  | Puente colapsado                 |

  Scenario Outline: Escenario 2 - Envío de alerta a la autoridad
    Given que he marcado la zona "<ubicacion>" como inaccesible
    When guardo el registro
    Then el sistema envía una alerta automática a la autoridad correspondiente con el detalle "<comentario>"

    Examples:
      | ubicacion     | comentario                     |
      | -12.04,-77.07 | Vehículos no pueden ingresar   |
      | -12.06,-77.03 | Se requiere ruta alterna urgente |
