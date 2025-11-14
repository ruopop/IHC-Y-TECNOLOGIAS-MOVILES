Feature: US003 - Consulta de pronóstico climático
  Como ciudadano
  Quiero ver el pronóstico del clima
  Para anticipar posibles inundaciones

  Scenario: Escenario 1 - Visualización de pronóstico con datos clave
    Given que accedo a la pantalla "Pronóstico climático"
    When el sistema consulta la información meteorológica de fuentes oficiales
    Then se muestra la temperatura actual y pronosticada
    And se muestra la probabilidad de lluvias
    And se muestran alertas próximas relacionadas a inundaciones

  Scenario: Escenario 2 - Validación con fuentes oficiales
    Given que el sistema obtiene el pronóstico climático
    When se presentan los datos al usuario
    Then la información debe provenir de fuentes oficiales configuradas
    And el usuario puede ver la fuente de la información en la interfaz
