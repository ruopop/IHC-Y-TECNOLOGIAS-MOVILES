Feature: US040 - Panel de coordinación de equipos
  Como coordinador de voluntarios
  Quiero ver todos los equipos activos
  Para distribuir tareas y evitar solapamientos

  Scenario Outline: Escenario 1 - Ver equipos activos
    Given que accedo al panel de coordinación
    When aplico el filtro por estado "<estado>"
    Then veo los equipos que están en estado "<estado>"

    Examples:
      | estado     |
      | activos    |
      | en proceso |

  Scenario Outline: Escenario 2 - Reasignar equipo
    Given que estoy visualizando el equipo "<equipo>"
    When lo reasigno a la zona "<nueva_zona>"
    Then el equipo queda marcado como reasignado a "<nueva_zona>"

    Examples:
      | equipo            | nueva_zona |
      | Equipo Norte     | Zona Sur   |
      | Equipo Rescate A | Zona Centro|
