Feature: US035 - Visualización de zonas críticas
  Como voluntario
  Quiero visualizar las zonas críticas marcadas por la autoridad
  Para priorizar las áreas que necesitan más apoyo

  Scenario Outline: Escenario 1 - Ver zonas críticas en mapa
    Given que accedo al mapa de zonas críticas
    When el sistema carga la información de urgencia "<urgencia>"
    Then veo las zonas marcadas según nivel "<urgencia>"

    Examples:
      | urgencia |
      | alta     |
      | media    |

  Scenario Outline: Escenario 2 - Descargar lista de zonas críticas
    Given que estoy en la sección de zonas críticas
    When selecciono la opción de descargar lista
    Then se descarga un archivo con las zonas de urgencia "<urgencia>"

    Examples:
      | urgencia |
      | alta     |
      | media    |
