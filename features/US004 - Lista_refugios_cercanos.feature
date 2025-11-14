Feature: US004 - Lista de refugios cercanos
  Como ciudadano
  Quiero ver refugios cercanos a mi ubicación
  Para tener un lugar seguro donde acudir

  Scenario Outline: Escenario 1 - Listado de refugios cercanos
    Given que tengo la ubicación activada en la app
    When accedo a la sección "Refugios cercanos"
    Then se muestra una lista de refugios ordenados por distancia
    And cada refugio muestra su dirección, distancia y capacidad "<capacidad>"

    Examples:
      | capacidad   |
      | Baja        |
      | Media       |
      | Alta        |

  Scenario: Escenario 2 - Visualización de refugios en el mapa
    Given que me encuentro en la sección "Refugios cercanos"
    When selecciono la opción "Ver en mapa"
    Then se muestra un mapa con la ubicación de los refugios cercanos
    And puedo identificar visualmente cuál es el refugio más cercano a mi posición
