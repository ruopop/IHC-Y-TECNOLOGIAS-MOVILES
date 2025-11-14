Feature: US047 - Evaluación post emergencia
  Como voluntario
  Quiero completar una evaluación después de cada emergencia
  Para mejorar la coordinación en futuras intervenciones

  Scenario Outline: Escenario 1 - Completar formulario de evaluación
    Given que accedo a la evaluación de la emergencia "<emergencia>"
    When respondo las preguntas sobre logística "<logistica>" y comunicación "<comunicacion>"
    And envío el formulario
    Then el sistema guarda mis respuestas para análisis interno

    Examples:
      | emergencia         | logistica      | comunicacion     |
      | Inundación Febrero | adecuada       | mejorable        |
      | Inundación Marzo   | insuficiente   | buena            |

  Scenario Outline: Escenario 2 - Añadir sugerencias adicionales
    Given que estoy completando la evaluación de la emergencia "<emergencia>"
    When añado la sugerencia "<sugerencia>"
    Then la sugerencia queda registrada en el sistema para futuras mejoras

    Examples:
      | emergencia         | sugerencia                          |
      | Inundación Febrero | Aumentar puntos de distribución     |
      | Inundación Marzo   | Mejorar comunicación con refugios   |
