Feature: US024 - Monitoreo de reportes ciudadanos
  Como autoridad local
  Quiero visualizar los reportes enviados por ciudadanos
  Para verificar zonas afectadas y tomar acción

  Scenario Outline: Escenario 1 - Visualizar lista de reportes
    Given que accedo al panel de reportes ciudadanos
    When el sistema carga los reportes ordenados por "<criterio>"
    Then veo la lista de reportes ordenados por "<criterio>"
    And cada reporte muestra foto, descripción y ubicación

    Examples:
      | criterio |
      | fecha    |
      | gravedad |

  Scenario Outline: Escenario 2 - Visualización en mapa
    Given que estoy en el panel de reportes ciudadanos
    When selecciono la opción "Ver en mapa" para el reporte con ID "<id_reporte>"
    Then se muestra la ubicación del reporte "<id_reporte>" en el mapa
    And puedo identificar si se encuentra en una zona crítica

    Examples:
      | id_reporte |
      | RPT-001    |
      | RPT-002    |
