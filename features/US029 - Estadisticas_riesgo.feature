Feature: US029 - Acceso a estadísticas de riesgo
  Como autoridad local
  Quiero acceder a estadísticas de alertas y reportes
  Para analizar la frecuencia de inundaciones en mi zona

  Scenario Outline: Escenario 1 - Visualizar gráficos estadísticos
    Given que accedo a la sección "Estadísticas de riesgo"
    When selecciono el rango de fechas desde "<fecha_inicio>" hasta "<fecha_fin>"
    Then el sistema muestra gráficos con frecuencia de alertas y zonas afectadas en ese periodo

    Examples:
      | fecha_inicio | fecha_fin  |
      | 2025-01-01   | 2025-01-31 |
      | 2025-02-01   | 2025-02-28 |

  Scenario Outline: Escenario 2 - Filtrar por nivel de riesgo
    Given que estoy en la sección "Estadísticas de riesgo"
    When aplico el filtro por nivel de riesgo "<nivel>"
    Then los gráficos se actualizan mostrando solo datos del nivel "<nivel>"

    Examples:
      | nivel |
      | bajo  |
      | medio |
      | alto  |

  Scenario Outline: Escenario 3 - Exportar datos
    Given que estoy visualizando las estadísticas filtradas por nivel "<nivel>"
    When selecciono la opción de exportar en formato "<formato>"
    Then se descarga un archivo en formato "<formato>" con las estadísticas correspondientes

    Examples:
      | nivel | formato |
      | alto  | PDF     |
      | medio | Excel   |
